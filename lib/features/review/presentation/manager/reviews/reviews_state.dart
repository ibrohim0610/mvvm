import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/data/models/recipe_reviews_comment_model.dart';
import 'package:recipe_app/core/data/models/recipe_reviews_model.dart';

enum ReviewsStatus { idle, loading, error }

@immutable
class ReviewsState extends Equatable {
  final ReviewsStatus status;
  final ReviewsModel? recipeModel;
  final List<ReviewCommentModel>? comment;

  const ReviewsState({
    required this.recipeModel,
    required this.status,
    required this.comment,
  });

  ReviewsState copyWith({
    ReviewsModel? recipeModel,
    ReviewsStatus? status,
    List<ReviewCommentModel>? comment
  }) {
    return ReviewsState(
      recipeModel: recipeModel ?? this.recipeModel,
      status: status ?? this.status,
      comment: comment ?? this.comment
    );
  }

  @override
  List<Object?> get props => [recipeModel, status,comment];
}
