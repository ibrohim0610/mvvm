import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/data/repositories/review_repository.dart';
import 'package:recipe_app/features/review/presentation/manager/reviews/reviews_state.dart';
part 'reviews_event.dart';

class ReviewsBloc extends Bloc<ReviewsEvent,ReviewsState>{
  ReviewsBloc({
    required ReviewRepository recipeRepo,
    required int recipeId
}):_recipeRepo = recipeRepo,
  super(
        ReviewsState(
            recipeModel: null,
            status: ReviewsStatus.loading,
            comment: null
        ),
      ){
    on<ReviewsLoading>(_onLoad);
    add(ReviewsLoading(recipeId: recipeId));
  }
  final ReviewRepository _recipeRepo;
  Future<void>_onLoad(ReviewsLoading event, Emitter<ReviewsState>emit)async {
    emit(state.copyWith(status: ReviewsStatus.loading));
    final recipe = await _recipeRepo.fetchRecipeReviews(event.recipeId);
    final comment = await _recipeRepo.fetchRecipeCommentReviews(event.recipeId);
    emit(state.copyWith(comment: comment,status: ReviewsStatus.idle));
    emit(state.copyWith(recipeModel: recipe,status: ReviewsStatus.idle));
  }
}