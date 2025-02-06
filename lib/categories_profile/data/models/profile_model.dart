class ProfileModel {
  final int id;
  final String profilePhoto;
  final String username;
  final String fullName;
  final String presentation;
  final int recipesCount;
  final int followingCount;
  final int followerCount;

  ProfileModel({
    required this.id,
    required this.profilePhoto,
    required this.username,
    required this.fullName,
    required this.presentation,
    required this.recipesCount,
    required this.followingCount,
    required this.followerCount,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      id: json['id'],
      profilePhoto: json['profilePhoto'],
      username: json['username'],
      fullName: json['fullName'],
      presentation: json['presentation'],
      recipesCount: json['recipesCount'],
      followingCount: json['followingCount'],
      followerCount: json['followerCount'],
    );
  }
}