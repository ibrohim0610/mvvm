import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../data/models/onboarding_model.dart';
import '../../data/repositories/onboarding_repositories.dart';

class OnboardingViewModel extends ChangeNotifier {
  OnboardingViewModel({required OnboardingRepository repo}) : _repo = repo {
    load();
  }
  final  controller = PageController();
  final OnboardingRepository _repo;

  List<OnboardingModel> pages = [];



  Future<void> load() async {
    pages = await _repo.fetchOnboardingPages();
    notifyListeners();
  }
  void pageChangedCallBack(int index, BuildContext context){
    if (index >= pages.length){
      context.go('/');
    }
  }
}