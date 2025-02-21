import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../features/onboarding/data/repositories/onboarding_repositories.dart';
import '../features/sign_up/data/repositories/sign_repository.dart';
import 'client.dart';

List<SingleChildWidget> providers = [
  Provider(
    create: (context) => ApiClient(),
  ),
  Provider(
    create: (context) => AuthRepository(
      client: context.read(),
    ),
  ),
  Provider(
    create: (context) => OnboardingRepository(
      client: context.read(),
    ),
  ),
];
