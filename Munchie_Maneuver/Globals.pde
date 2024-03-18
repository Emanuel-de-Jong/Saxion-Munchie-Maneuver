import java.util.concurrent.CopyOnWriteArrayList;

static class Globals {
    public static final float GRAVITY = 5;

    public static CopyOnWriteArrayList<GBase> GBasses = new CopyOnWriteArrayList<GBase>();
    public static Minim minim;
}
