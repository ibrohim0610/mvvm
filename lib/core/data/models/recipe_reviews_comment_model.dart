import 'package:recipe_app/features/review/data/models/review_comment_user_model.dart';


class ReviewCommentModel {
  final int id;
  final String comment;
  final num rating;
  final String image;
  final String created;


  final ReviewCommentUserModel userModel;


  ReviewCommentModel({
    required this.id,
    required this.rating,
    required this.comment,
    required this.userModel,
    required this.image,
    required this.created,
  });

  factory ReviewCommentModel.fromJson(Map<String, dynamic> json) {
    return ReviewCommentModel(
      id: json["id"],
      image: json["image"],
      comment: json['comment'],
      rating: json["rating"],
      created: json['created'],
      userModel: ReviewCommentUserModel.fromJson(json["user"]),
    );
  }

}