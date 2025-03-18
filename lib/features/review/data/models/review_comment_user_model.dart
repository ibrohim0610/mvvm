class ReviewCommentUserModel{
  final int id;
  final String image;
  final String userName;

  ReviewCommentUserModel({
    required this.id,
    required this.image,
    required this.userName
});
  factory ReviewCommentUserModel.fromJson(Map<String, dynamic>json){
    return ReviewCommentUserModel(id: json['id'],
        image: json['profilePhoto'],
        userName: json['username']);
  }
}