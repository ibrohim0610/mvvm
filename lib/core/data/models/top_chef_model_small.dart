class TopChefModelSmall {
  final int id;
  final String firstName;
  final String image;

  TopChefModelSmall({
    required this.id,
    required this.firstName,
    required this.image,
  });

  factory TopChefModelSmall.fromJson(Map<String, dynamic> json) {
    return TopChefModelSmall(
      id: json['id'],
      firstName: json['firstName'],
      image: json['photo'],
    );
  }
}