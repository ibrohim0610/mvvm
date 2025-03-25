class TrendingRecipesModel{
  final int id;
  final int categoryId;
  final String title,desc,image;
  final int timeRequired;
  final num rating;
  TrendingRecipesModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.desc,
    required this.image,
    required this.timeRequired,
    required this.rating,
});
  factory TrendingRecipesModel.fromJson(Map<String, dynamic>json){
    return TrendingRecipesModel(
        id: json['id'],
        categoryId: json['categoryId'],
        title: json['title'],
        desc: json['description'],
        image: json['photo'],
        timeRequired: json['timeRequired'],
        rating: json['rating']);
  }
}