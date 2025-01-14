class UserModelInRecipeDetail {
  final int id;
  final String username, fullName; //profileImage,

  UserModelInRecipeDetail({
    required this.id,
    // required this.profileImage,
    required this.username,
    required this.fullName,
  });

  factory UserModelInRecipeDetail.fromJson(Map<String, dynamic> json) {
    return UserModelInRecipeDetail(
      id: json['id'],
      // profileImage: json['profilePhoto'],
      username: json['username'],
      fullName: json['fullName'],
    );
  }
}
