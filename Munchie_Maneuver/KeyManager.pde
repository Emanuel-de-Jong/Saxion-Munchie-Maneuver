static class KeyManager {
    public static boolean[] KeysDown = new boolean[256];
    
    public static void keyPressed(int keyCode) {
        if (keyCode < 256) {
            KeysDown[keyCode] = true;
        }
    }
    
    public static void keyReleased(int keyCode) {
        if (keyCode < 256) {
            KeysDown[keyCode] = false;
        }
    }
}
