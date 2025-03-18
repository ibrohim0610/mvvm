import 'package:recipe_app/features/community/data/models/user_model.dart';

class ReviewsModel{
  final int id;
  final String title;
  final String photo;
  final num rating;
  final int reviewCount;
  final UserModel user;

  ReviewsModel({
    required this.id,
    required this.title,
    required this.photo,
    required this.rating,
    required this.reviewCount,
    required this.user
});
  factory ReviewsModel.fromJson(Map<String, dynamic>json){
    return ReviewsModel(
        id: json['id'],
        title: json['title'],
        photo: json['photo'],
        rating: json['rating'],
        reviewCount: json['reviewsCount'],
        user: UserModel.fromJson(json['user'])
    );
  }
}