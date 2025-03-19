import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/routing/routes.dart';
import 'package:recipe_app/features/categories/presentation/manager/categories_cubit.dart';
import 'package:recipe_app/features/categories/presentation/pages/categories_view.dart';
import 'package:recipe_app/features/categories_detail/presentation/manager/categories_detail_view_model.dart';
import 'package:recipe_app/features/categories_detail/presentation/pages/categories_detail_view.dart';
import 'package:recipe_app/features/chefs/presentation/pages/top_chefs_view.dart';
import 'package:recipe_app/features/community/presentation/manager/community_view_model.dart';
import 'package:recipe_app/features/community/presentation/pages/community_view.dart';
import 'package:recipe_app/features/home/presentation/pages/home_view.dart';
import 'package:recipe_app/features/recipe_detail/presentation/manager/recipe_detail_viewmodel.dart';
import 'package:recipe_app/features/recipe_detail/presentation/pages/recipe_detail_view.dart';
import 'package:recipe_app/features/review/presentation/manager/reviews/reviews_bloc.dart';
import 'package:recipe_app/features/review/presentation/pages/add_review.dart';
import 'package:recipe_app/features/review/presentation/pages/review_view.dart';
import 'package:recipe_app/features/sign_up/presentation/pages/complete_profile_view.dart';
import '../../features/categories/data/models/categories_model.dart';
import '../../features/onboarding/presentation/manager/onboarding_view_model.dart';
import '../../features/onboarding/presentation/pages/onboarding_view.dart';
import '../../features/review/presentation/manager/create_review/create_review_bloc.dart';
import '../../features/sign_up/presentation/pages/login_view.dart';
import '../../features/sign_up/presentation/pages/sign_up_view.dart';
import '../../main.dart';

final GoRouter router = GoRouter(

  navigatorKey: navigatorKey,
  initialLocation: Routes.topChefs,

  routes: [
    GoRoute(path: Routes.home,
        builder: (context,state){
          return HomeView();
        }),
    GoRoute(
      path: Routes.login,
      builder: (context, state) {
        return LoginView();
      },
    ),
    GoRoute(path: Routes.review,
        builder: (context, state)=>BlocProvider(
          create: (context)=>ReviewsBloc(
            recipeRepo: context.read(),
            recipeId: int.parse(state.pathParameters['recipeId']!),
          ),
          child: ReviewView(),
        )),

    GoRoute(
        path: Routes.completeProfile,
        builder: (context, state){
          return CompleteProfileView();
        }),
    GoRoute(
      path: Routes.signup,
      builder: (context, state) => SignUpView(),
    ),
    GoRoute(
        path: Routes.categories,
        builder: (context, state)=> BlocProvider(
          create: (context)=>CategoriesBloc(
            repo: context.read(),
          ),
          child: CategoriesView(),
        )
    ),
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) => OnboardingView(
        vm: OnboardingViewModel(
          repo: context.read(),
        ),
      ),
    ),GoRoute(
        path: Routes.categoriesDetail,
        builder: (context, state)=>
            CategoriesDetailView(viewModel: CategoriesDetailViewModel(
                repo: context.read(),
                catsRepo:context.read(),
                selected: state.extra as CategoryModel)
            )
    ),
    GoRoute(path: Routes.recipeDetail,
        builder: (context, state)=>ChangeNotifierProvider(
            create: (context)=>RecipeDetailViewmodel(
              repo: context.read(),
              recipeId: int.parse(state.pathParameters['recipeId']!),
            ),
            child:RecipeDetailView()
        )
    ),
    GoRoute(
      path: Routes.community,
      builder: (context, state) => ChangeNotifierProvider(
        create: (context) => CommunityViewModel(
          communityRepo: context.read(),
        ),
        child: CommunityView(),
      ),
    ),
    GoRoute(
      path: Routes.createReview,
      builder: (context, state) => BlocProvider(
        create: (context) => CreateReviewBloc(
          recipeRepo: context.read(),
          reviewRepo: context.read(),
        )..add(CreateReviewLoading(recipeId: int.parse(state.pathParameters['recipeId']!))),
        child: CreateReviewView(),
      ),
    ),
    GoRoute(path: Routes.topChefs,
    builder: (context,state){
      return TopChefsView();
    })
  ],
);

