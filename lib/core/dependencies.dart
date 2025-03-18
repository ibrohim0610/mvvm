import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:recipe_app/core/data/repositories/review_repository.dart';
import 'package:recipe_app/core/l10n/localization.dart';
import 'package:recipe_app/features/categories/data/repositories/categories_repository.dart';
import 'package:recipe_app/features/categories_detail/data/repositories/categories_detail_repositories.dart';
import 'package:recipe_app/features/community/presentation/manager/community_view_model.dart';
import 'package:recipe_app/core/data/repositories/recipe_repository.dart';
import 'package:recipe_app/features/sign_up/presentation/manager/sign_up_view_model.dart';

import '../features/onboarding/data/repositories/onboarding_repositories.dart';
import '../features/sign_up/data/repositories/sign_repository.dart';
import 'client.dart';

List<SingleChildWidget> providers = [
  Provider(create: (context) => ApiClient(),),
  Provider(create: (context) => AuthRepository(client: context.read(),),),
  Provider(create: (context)=> CategoriesRepository(client: context.read())),
  Provider(create: (context)=>ReviewRepository(client: context.read())),
  Provider(create: (context)=>RecipeRepository(client: context.read())),
  Provider(create: (context)=>CategoriesDetailRepositories(client: context.read())),
  ChangeNotifierProvider(create: (context)=>LocalizationViewModel()),
  Provider(create: (context) => OnboardingRepository(client: context.read(),),),
];
