import java.util.concurrent.CopyOnWriteArrayList;

static class Globals {
    public static final float DEFAULT_GRAVITY = 5;
    public static float Gravity = DEFAULT_GRAVITY;

    public static CopyOnWriteArrayList<GBase> GBasses = new CopyOnWriteArrayList<GBase>();
    public static Minim minim;
}
