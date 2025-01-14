class RecipeModelSmall {
  final int id;
  final String image, title, desc;
  final int time;

  RecipeModelSmall({
    required this.id,
    required this.image,
    required this.title,
    required this.desc,
    required this.time,
  });

  factory RecipeModelSmall.fromJson(Map<String, dynamic> json) {
    return RecipeModelSmall(
      id: json['id'] as int,
      image: json['photo'] as String,
      title: json['title'] as String,
      desc: json['description'] as String,
      time: json['timeRequired'] as int,
    );
  }
}
