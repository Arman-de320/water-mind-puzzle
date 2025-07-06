import 'models/bottle_style.dart';

class BottleManager {
  static List<BottleStyle> bottles = [
    BottleStyle(name: "Classic", imagePath: "assets/bottles/classic.png", price: 0, unlocked: true),
    BottleStyle(name: "Glass", imagePath: "assets/bottles/glass.png", price: 150),
    BottleStyle(name: "Rainbow", imagePath: "assets/bottles/rainbow.png", price: 300),
  ];

  static BottleStyle selectedBottle = bottles[0];

  static void unlockBottle(BottleStyle bottle) {
    bottle.unlocked = true;
  }

  static void selectBottle(BottleStyle bottle) {
    if (bottle.unlocked) {
      selectedBottle = bottle;
    }
  }
}
