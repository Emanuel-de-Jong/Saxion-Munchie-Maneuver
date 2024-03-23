class ResultPopup extends GObject {
    public static final int MARGIN = 30;

    public GShapeRect Background;

    public ResultPopup() {
        super(MARGIN, MARGIN);

        Background = new GShapeRect(this, 0, 0, color(50, 50, 50, 200), width - MARGIN * 2, height - MARGIN * 2);
        Background.Layer = 100;

        setOff(true);
    }

    public void setOff(boolean value) {
        super.setOff(value);

        Background.setOff(value);
    }
}
