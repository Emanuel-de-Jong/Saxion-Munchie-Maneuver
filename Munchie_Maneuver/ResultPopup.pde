class ResultPopup extends GObject {
    public static final int MARGIN = 30;

    public GShapeRect Background;

    private String title = "";

    public ResultPopup() {
        super(MARGIN, MARGIN);

        Layer = 200;

        Background = new GShapeRect(this, 0, 0, color(50, 50, 50, 200), width - MARGIN * 2, height - MARGIN * 2);
        Background.Layer = 100;

        setOff(true);
    }

    public void Win(int points) {
        if (getOff() == false) return;

        title = "You win with " + points + " points!";
        setOff(false);
    }

    public void Loss() {
        if (getOff() == false) return;
        
        title = "You ran out of lifes!";
        setOff(false);
    }

    public void draw() {
        super.draw();

        fill(255);
        textSize(40);
        text(title, MARGIN + 20, height / 2 + 20);
    }

    public void setOff(boolean value) {
        super.setOff(value);

        Background.setOff(value);
    }
}
