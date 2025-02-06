class CategoryModel{
  final int id;
  final String image, title;
  final bool main;


  CategoryModel({
    required this.id,
    required this.image,
    required this.title,
    required this.main
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json){
    return CategoryModel(
        id: json['id'],
        image: json['image'],
        title: json['title'],
        main: json['main']
    );
  }

}

