class ProfileModel {
  final int id;
  final String fullName, username, bio;
  final String image;
  final int recipes, following, followers;

  ProfileModel({
    required this.id,
    required this.fullName,
    required this.username,
    required this.bio,
    required this.image,
    required this.recipes,
    required this.following,
    required this.followers,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      id: json['id'],
      fullName: json['fullName'],
      username: json['username'],
      bio: json['presentation'],
      image: json['profilePhoto'],
      recipes: json['recipesCount'],
      following: json['followingCount'],
      followers: json['followerCount'],
    );
  }
}