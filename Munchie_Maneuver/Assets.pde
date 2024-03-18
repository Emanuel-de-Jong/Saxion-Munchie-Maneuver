static class Assets {
    private static PApplet pApplet;

    public static ArrayList<PImage> FoodImgs;
    public static PImage CharacterImg;

    public static void init(PApplet _pApplet) {
        pApplet = _pApplet;

        CharacterImg = pApplet.loadImage(pApplet.dataPath("/imgs/Character.png"));

        FoodImgs = new ArrayList<PImage>();
        for (int i = 1; i <= 9; i++) {
            FoodImgs.add(pApplet.loadImage(pApplet.dataPath("/imgs/foods/" + i + ".png")));
        }
    }
}
