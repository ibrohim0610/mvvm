part of 'create_review_bloc.dart';

sealed class CreateReviewEvent {}

final class CreateReviewLoading extends CreateReviewEvent {
  final int recipeId;

  CreateReviewLoading({required this.recipeId});
}

final class CreateReviewLoad extends CreateReviewEvent {
  final int recipeId;

  CreateReviewLoad({required this.recipeId});
}

final class CreateReviewRate extends CreateReviewEvent {
  final int currentIndex;

  CreateReviewRate({required this.currentIndex});
}

final class CreateReviewPickImage extends CreateReviewEvent {}

final class CreateReviewRecommendOrNot extends CreateReviewEvent {
  final bool value;

  CreateReviewRecommendOrNot({required this.value});
}

final class CreateReviewSubmit extends CreateReviewEvent {}