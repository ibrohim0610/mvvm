class ProfileRecipesModel {
  final String title, description, photo;
  final num id, categoryId, timeRequired;
  final num rating;

  ProfileRecipesModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.description,
    required this.photo,
    required this.timeRequired,
    required this.rating,
  });

  factory ProfileRecipesModel.fromJson(Map<String, dynamic> json) {
    return ProfileRecipesModel(
      id: json['id'],
      categoryId: json['categoryId'],
      title: json['title'],
      description: json['description'],
      photo: json['photo'],
      timeRequired: json['timeRequired'],
      rating: json['rating'],
    );
  }
}