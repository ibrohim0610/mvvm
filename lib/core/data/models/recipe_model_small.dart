class RecipeModelSmall {
  final int id;
  final String image, title, desc;
  final int time;
  final num rating;
  final bool isLiked;

  RecipeModelSmall({
    required this.id,
    required this.image,
    required this.title,
    required this.desc,
    required this.time,
    required this.rating,
    required this.isLiked,
  });

  factory RecipeModelSmall.fromJson(Map<String, dynamic> json) {
    return RecipeModelSmall(
      id: json['id'] as int,
      image: json['photo'] as String,
      title: json['title'] as String,
      desc: json['description'] as String,
      time: json['timeRequired'] as int,
      rating: json['rating'],
      isLiked: json['isLiked'] ?? false,
    );
  }
}