class TrendingRecipeModel {
  final int id, categoryId;
  final String title, desc;
  final String photo;
  final num rating;
  final int timeRequired;

  TrendingRecipeModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.desc,
    required this.photo,
    required this.rating,
    required this.timeRequired,
  });

  factory TrendingRecipeModel.fromJson(Map<String, dynamic> json) {
    return TrendingRecipeModel(
      id: json['id'],
      categoryId: json['categoryId'],
      title: json['title'],
      desc: json['description'],
      photo: json['photo'],
      rating: json['rating'],
      timeRequired: json['timeRequired'],
    );
  }
}