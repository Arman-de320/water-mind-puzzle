class BottleStyle {
  final String name;
  final String imagePath;
  final int price;
  bool unlocked;

  BottleStyle({
    required this.name,
    required this.imagePath,
    required this.price,
    this.unlocked = false,
  });
}
