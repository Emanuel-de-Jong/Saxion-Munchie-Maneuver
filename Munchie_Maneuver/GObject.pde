class GObject extends GBase {
  public ArrayList<GShape> GShapes;

  public PImage Img;
  public PVector ImgSize;
  
  public PVector Coords;
  
  public GObject(float x, float y) {
    super();
    
    Coords = new PVector(x, y);
    
    GShapes = new ArrayList<GShape>();
  }

  public void setImg(String imgPath, float imgWidth, float imgHeight) {
    Img = loadImage("Assets/Images/" + imgPath);
    ImgSize = new PVector(imgWidth, imgHeight);
  }
  
  public void draw() {
    super.draw();

    if (Img != null) {
      image(Img, Coords.x, Coords.y, ImgSize.x, ImgSize.y);
    }
  }
}
