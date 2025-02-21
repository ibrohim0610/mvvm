class MyProfileModel {
  final int id;
  final String image;
  final String username;
  final String fullName;
  final String presentation;
  final int recipesCount;
  final int followingCount;
  final int followerCount;

  MyProfileModel({
    required this.id,
    required this.image,
    required this.username,
    required this.fullName,
    required this.presentation,
    required this.recipesCount,
    required this.followingCount,
    required this.followerCount,
  });

  factory MyProfileModel.fromJson(Map<String, dynamic> json) {
    return MyProfileModel(
      id: json['id'],
      image: json['profilePhoto'],
      username: json['username'],
      fullName: json['fullName'],
      presentation: json['presentation'],
      recipesCount: json['recipesCount'],
      followingCount: json['followingCount'],
      followerCount: json['followerCount'],
    );
  }
}