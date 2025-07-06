class LevelManager {
  static int highestUnlockedLevel = 1;

  static bool isUnlocked(int level) {
    return level <= highestUnlockedLevel;
  }

  static void unlockNextLevel(int currentLevel) {
    if (currentLevel >= highestUnlockedLevel) {
      highestUnlockedLevel = currentLevel + 1;
    }
  }
}
