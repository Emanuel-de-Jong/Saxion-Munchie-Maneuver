import ddf.minim.*;

class Game extends GBase {
    public Character MainCharacter;

    private FoodSpawner foodSpawner;
    private ResultPopup resultPopup;
    private AudioSample coinCollectPlayer;
    private AudioSample EatPlayer;

    private static final int POINTS_TO_WIN = 500;
    private static final int DEFAULT_LIFES = 5;
    private int lifes = DEFAULT_LIFES;
    private float scoreMultiplier = 1;
    private boolean isPaused = false;

    private static final int BOOST_MODE_DURATION = 5000;
    private static final int BOOST_MODE_COOLDOWN = 8000;
    private boolean isBoostMode = false;
    private int lastBoostMode = 0;
    
    public Game() {
        coinCollectPlayer = Globals.minim.loadSample(dataPath("/audio/CoinCollect.mp3"), 512);
        EatPlayer = Globals.minim.loadSample(dataPath("/audio/Eat.mp3"), 512);

        MainCharacter = new Character(width / 2, 0);
        MainCharacter.Coords.y = height - MainCharacter.ImgSize.y;

        foodSpawner = new FoodSpawner();
        resultPopup = new ResultPopup();
    }

    private void startBoostMode() {
        isBoostMode = true;
        Globals.Gravity = 8;
        scoreMultiplier = 1.5;
    }

    private void stopBoostMode() {
        isBoostMode = false;
        Globals.Gravity = Globals.DEFAULT_GRAVITY;
        scoreMultiplier = 1;
    }

    private void pause() {
        isPaused = true;

        foodSpawner.setOff(true);
        MainCharacter.setOff(true);
    }

    private void resume() {
        isPaused = false;

        foodSpawner.setOff(false);
        MainCharacter.setOff(false);
    }

    public void draw() {
        super.draw();

        if (isPaused) return;

        calcLifes();
        drawLifes();
        handleWin();
        handleLoss();
        handleFoodCollision();
        handleBoostMode();
        drawBoostModeCooldown();
    }

    private void calcLifes() {
        lifes = DEFAULT_LIFES - foodSpawner.UncaughtBigFoods;
    }

    private void drawLifes() {
        fill(0);
        textSize(36);
        text("Lifes: " + lifes, 10, 80);
    }

    private void handleWin() {
        if (MainCharacter.Points >= POINTS_TO_WIN) {
            pause();
            resultPopup.Win(MainCharacter.Points);
        }
    }

    private void handleLoss() {
        if (lifes <= 0) {
            pause();
            resultPopup.Loss();
        }
    }

    private void handleFoodCollision() {
        ArrayList<Food> foodsToDel = new ArrayList<Food>();

        float characterX = MainCharacter.Coords.x + MainCharacter.ImgSize.x / 2;
        float characterY = MainCharacter.Coords.y + MainCharacter.ImgSize.y / 2;
        for (Food food : foodSpawner.Foods) {
            if (food.Coords.y < MainCharacter.Coords.y) continue;

            float foodX = food.Coords.x;
            float foodY = food.Coords.y;

            if (food instanceof FoodBig) {
                foodX += food.ImgSize.x / 2;
                foodY += food.ImgSize.y / 2;
            }

            if (dist(characterX, characterY, foodX, foodY) < MainCharacter.Radius + food.Radius) {
                foodsToDel.add(food);

                MainCharacter.Points += food.Points * scoreMultiplier;

                if (food instanceof FoodBig) {
                    EatPlayer.trigger();
                } else {
                    // coinCollectPlayer.trigger();
                }
            }
        }

        for (Food food : foodsToDel) {
            foodSpawner.Foods.remove(food);
            food.destroy();
        }
    }

    private void handleBoostMode() {
        if (isBoostMode) {
            if (millis() - lastBoostMode > BOOST_MODE_DURATION) {
                lastBoostMode = millis();
                stopBoostMode();
            }
        } else if (KeyManager.KeysDown[32]) { // If spacebar was pressed
            if (millis() - lastBoostMode > BOOST_MODE_COOLDOWN) {
                lastBoostMode = millis();
                startBoostMode();
            }
        }
    }

    private void drawBoostModeCooldown() {
        fill(0);
        textSize(36);

        if (isBoostMode) {
            int boostModeLeft = Math.round((BOOST_MODE_DURATION - (millis() - lastBoostMode)) / 1000);
            text("BM Left: " + boostModeLeft, 10, 120);
        } else {
            int boostCooldown = Math.round((BOOST_MODE_COOLDOWN - (millis() - lastBoostMode)) / 1000);
            String text = boostCooldown >= 0 ? str(boostCooldown) : "Ready";
            text("BM Cooldown: " + text, 10, 120);
        }
    }
}
