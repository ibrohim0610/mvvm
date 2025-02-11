 class CategoryModel{

   final int id;
   final String  title, image;
   final bool main;
  CategoryModel({
     required this.id,
    required this.title,
    required this.image,
    required this.main
 });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      main: json['main'])
  ;
}