class CategoryModel {
  final int id;
  final String title, image;
  final bool main;

  CategoryModel({
    required this.id,
    required this.title,
    required this.image,
    required this.main,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json['id'] as int,
        title: json['title'] as String,
        image: json['image'] as String,
        main: json['main'] as bool,
      );
}
