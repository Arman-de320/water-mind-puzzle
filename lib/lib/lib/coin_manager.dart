class CoinManager {
  static int coins = 100; // Starting coins
  static int coinsPerLevel = 83;
  static int levelIncrement = 5;

  static void addCoinsForLevel(int level) {
    coins += coinsPerLevel + ((level - 1) * levelIncrement);
  }

  static bool spendCoins(int amount) {
    if (coins >= amount) {
      coins -= amount;
      return true;
    }
    return false;
  }

  static void addRewardCoins(int amount) {
    coins += amount;
  }
}
