static class Assets {
    private static PApplet pApplet;

    public static ArrayList<PImage> FoodImgs;
    public static PImage CharacterImg;

    public static void init(PApplet _pApplet) {
        pApplet = _pApplet;

        CharacterImg = pApplet.loadImage(pApplet.dataPath("/imgs/Character.png"));

        FoodImgs = new ArrayList<PImage>();
        PImage foodImgMap = pApplet.loadImage(pApplet.dataPath("/imgs/Foods.png"));
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                int x = j * 426;
                int y = i * 415;
                FoodImgs.add(foodImgMap.get(x, y, 426, 415));
            }
        }
    }
}
