import 'package:mvvm/categories_profile/data/models/profile_model.dart';
import 'package:mvvm/core/client.dart';


class ProfileRepository{
  final ApiClient client;
  ProfileRepository({required this.client});

  ProfileModel? profile ;

  Future<ProfileModel?> fetchProfile() async{
    if(profile != null) return profile;
    var rawProfile = await client.fetchProfile();
    profile = ProfileModel.fromJson(rawProfile);
    return profile;
  }
}