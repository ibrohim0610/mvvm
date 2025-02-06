class RecipeModelSmall{
  final int id, categoryId;
  final String title, image, desc;
  final int time;

  RecipeModelSmall({
    required this. id,
    required this.categoryId,
    required this.title,
    required this.image,
    required this.desc,
    required this.time
  }
  );

  factory RecipeModelSmall.fromJson(Map<String, dynamic>json){
    return RecipeModelSmall(
        id: json["id"],
        categoryId: json["categoryId"],
        title: json["title"],
        image: json["photo"],
        desc: json["description"],
        time: json["timeRequired"]
    );
  }
}