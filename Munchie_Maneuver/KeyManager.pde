static class KeyManager {
  public static boolean[] KeysDown = new boolean[256];

  public static void handleKeyPressed(int keyCode) {
    if (keyCode < 256) {
        KeysDown[keyCode] = true;
    }
  }
  
  public static void handleKeyReleased(int keyCode) {
    if (keyCode < 256) {
        KeysDown[keyCode] = false;
    }
  }
}
