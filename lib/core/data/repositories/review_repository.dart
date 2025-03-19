import 'dart:io';

import 'package:recipe_app/core/client.dart';
import 'package:recipe_app/core/data/models/create_review_model.dart';
import 'package:recipe_app/core/data/models/recipe_reviews_comment_model.dart';
import 'package:recipe_app/core/data/models/recipe_reviews_model.dart';

class ReviewRepository{
  final ApiClient client;
  ReviewsModel? reviewsModel;
  List<ReviewCommentModel> comment = [];

  ReviewRepository({
    required this.client
});
  Future<bool>createReview({
    required int recipeId,
    required int rating,
    required String comment,
    required bool recommend,
    File? photo,
})async{
    final reviewModel = CreateReviewModel(
        recipeId: recipeId,
        comment: comment,
        recommend: recommend,
        rating: rating);
    final result = await client.createReview(reviewModel);
    return result;
  }
  Future<ReviewsModel>fetchRecipeReviews(int recipeId)async{
    var rewReview = await client.fetchReview(recipeId);
    reviewsModel= ReviewsModel.fromJson(rewReview);
    return reviewsModel!;
  }
  Future<List<ReviewCommentModel>>fetchRecipeCommentReviews(int recipeId )async{
    if (comment.isNotEmpty) {
      return comment;
    }  else{
      var rawComment = await client.fetchReviewComment(recipeId);
      comment = rawComment.map((comment)=>ReviewCommentModel.fromJson(comment)).toList();
      return comment;
    }
  }

}