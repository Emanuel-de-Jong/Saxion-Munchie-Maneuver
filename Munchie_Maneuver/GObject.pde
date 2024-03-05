class GObject extends GBase {
  public ArrayList<GShape> GShapes;

  public PImage Img;
  public float ImgWidth;
  public float ImgHeight;
  
  public float X;
  public float Y;
  
  public GObject(float x, float y) {
    X = x;
    Y = y;
    
    GShapes = new ArrayList<GShape>();
  }

  public void setImg(String imgPath, float imgWidth, float imgHeight) {
    Img = loadImage(imgPath);
    ImgWidth = imgWidth;
    ImgHeight = imgHeight;
  }
  
  public void display() {
    if (Img != null) {
      image(Img, X, Y, ImgWidth, ImgHeight);
    }

    for (GShape gShape : GShapes) {
      gShape.display(X, Y);
    }
  }

  public void update() {
    for (GShape gShape : GShapes) {
      gShape.update();
    }
  }
  
  public void handleKeyPressed() {
    for (GShape gShape : GShapes) {
      gShape.handleKeyPressed();
    }
  }
}
