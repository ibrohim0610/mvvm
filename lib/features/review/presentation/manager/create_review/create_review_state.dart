import 'dart:io';
import 'package:equatable/equatable.dart';
import '../../../../../core/data/models/recipe_create_review_model.dart';

enum CreateReviewStatus { idle, loading, error, submitted }

class CreateReviewState extends Equatable {
  final int? recipeId;
  final int? currentIndex;
  final CreateReviewStatus? status;
  final bool? doesRecommend;

  final File? pickedImage;

  final RecipeCreateReviewModel? recipeModel;

  const CreateReviewState({
    required this.recipeId,
    required this.currentIndex,
    required this.status,
    required this.pickedImage,
    required this.doesRecommend,
    required this.recipeModel,
  });

  factory CreateReviewState.initial() {
    return CreateReviewState(
      recipeId: null,
      currentIndex: null,
      pickedImage: null,
      status: CreateReviewStatus.loading,
      doesRecommend: null,
      recipeModel: null,
    );
  }

  CreateReviewState copyWith({
    int? recipeId,
    int? currentIndex,
    CreateReviewStatus? status,
    File? pickedImage,
    bool? doesRecommend,
    RecipeCreateReviewModel? recipeModel,
  }) {
    return CreateReviewState(
      recipeId: recipeId ?? this.recipeId,
      currentIndex: currentIndex ?? this.currentIndex,
      status: status ?? this.status,
      pickedImage: pickedImage ?? this.pickedImage,
      doesRecommend: doesRecommend ?? this.doesRecommend,
      recipeModel: recipeModel ?? this.recipeModel,
    );
  }

  @override
  List<Object?> get props => [recipeId, currentIndex, pickedImage, status, doesRecommend, recipeModel];
}