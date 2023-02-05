class Meal {
  final int id;
  final String title;
  final String imageUrl;
  final double price;
  final int ratingCount;
  final int duration;
  bool isFav;
  Meal({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.ratingCount,
    required this.duration,
    this.isFav = false,
  });
}
