class CoinManager {
  static int coins = 100;

  static void addCoins(int amount) {
    coins += amount;
  }

  static bool spendCoins(int amount) {
    if (coins >= amount) {
      coins -= amount;
      return true;
    }
    return false;
  }

  static int getCoinCount() {
    return coins;
  }
}
