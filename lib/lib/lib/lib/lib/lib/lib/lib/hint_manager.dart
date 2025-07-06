class HintManager {
  static int hintCount = 3;

  static bool useHint() {
    if (hintCount > 0) {
      hintCount--;
      return true;
    }
    return false;
  }

  static void addHints(int count) {
    hintCount += count;
  }

  static bool isEmpty() {
    return hintCount == 0;
  }
}
