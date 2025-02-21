import 'package:recipe_app/core/client.dart';

import '../models/onboarding_model.dart';

class OnboardingRepository {
  OnboardingRepository({ required this.client,});

  final ApiClient client;

  List<OnboardingModel>pages = [];

  Future<List<OnboardingModel>> fetchOnboardingPages() async {
    if(pages.isNotEmpty) return pages;
    var rawPages = await client.fetchOnboardingPages();
    pages = rawPages.map((page) => OnboardingModel.fromJson(page)).toList();
    return pages;
  }

}
