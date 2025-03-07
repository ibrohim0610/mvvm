import 'package:recipe_app/features/community/data/models/user_model.dart';

class CommunityModel{


  final int id;
  final String title ,desc, photo;
  final num timeRequired, rating, reviewsCount;
  final String created;
  final UserModel user;

  CommunityModel({
    required this.id,
    required this.title,
    required this.desc,
    required this.photo,
    required this.timeRequired,
    required this.rating,
    required this.reviewsCount,
    required this.created,
    required this.user
});
  factory CommunityModel.fromJson(Map<String, dynamic>json){
    return CommunityModel(id: json['id'],
        title: json['title'],
        desc: json['description'],
        photo: json['photo'],
        timeRequired: json['timeRequired'],
        rating: json['rating'],
        reviewsCount: json['reviewsCount'],
        created: json['created'],
        user: UserModel.fromJson(json['user']),
    );
  }
}