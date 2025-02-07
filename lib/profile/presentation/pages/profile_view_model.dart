import 'package:flutter/cupertino.dart';
import '../../data/models/profile_model.dart';
import '../../data/repositories/profile_repository.dart';


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