class MyProfileRecipeModel{
  final String title, description,photo;

  final  int id, categoryId, timeRequired;

  final num rating;

  MyProfileRecipeModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.description,
    required this.photo,
    required this.timeRequired,
    required this.rating,
  });

  factory MyProfileRecipeModel.fromJson(Map<String, dynamic>json){
    return MyProfileRecipeModel(
        id: json['id'],
        categoryId: json['categoryId'],
        title: json['title'],
        description: json['description'],
        photo: json['photo'],
        timeRequired: json['timeRequired'],
        rating: json['rating']);
  }
}
