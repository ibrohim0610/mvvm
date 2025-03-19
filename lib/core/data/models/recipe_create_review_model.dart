class RecipeCreateReviewModel {
  final int id;
  final String title;
  final String image;

  RecipeCreateReviewModel({
    required this.id,
    required this.title,
    required this.image,
  });

  factory RecipeCreateReviewModel.fromJson(Map<String, dynamic> json) {
    return RecipeCreateReviewModel(
      id: json['id'],
      title: json['title'],
      image: json['photo'],
    );
  }
}