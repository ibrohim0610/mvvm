class UserModel{
  final int id;
  final String image, username,firstName, lastName;

  UserModel( {
    required this.id,
    required this.image,
    required this.username,
    required this.firstName,
    required this.lastName,
});
  factory UserModel.fromJson(Map<String, dynamic>json){
    return UserModel(id: json['id'],
        image: json['profilePhoto'],
        username: json['username'],
        firstName: json['firstName'],
        lastName: json['lastName']
    );
  }
}