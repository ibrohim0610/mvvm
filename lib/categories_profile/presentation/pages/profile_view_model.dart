import 'package:flutter/cupertino.dart';
import 'package:mvvm/categories_profile/data/models/profile_model.dart';
import 'package:mvvm/categories_profile/data/repositories/profile_repository.dart';


class ProfileViewModel extends ChangeNotifier{
  ProfileViewModel({required ProfileRepository repo}): _repo = repo{load();}

  final ProfileRepository? _repo;

  ProfileModel? profile;

  bool loading = true;

  Future<void> load() async{
    loading = true;
    notifyListeners();

    profile = await _repo?.fetchProfile();
    loading = false;
    notifyListeners();
  }
}