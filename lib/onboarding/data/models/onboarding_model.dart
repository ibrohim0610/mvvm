class OnboardingModel{
  final int id;

  final String title, subtitle, image;

  final int order;

  OnboardingModel ({
  required this.id,
  required this.title,
  required this.subtitle,
  required this.image,
  required this.order,
  });

  factory OnboardingModel.fromJson (Map<String, dynamic> json) {
    return OnboardingModel(
        id: json['id'],
        title: json['title'],
        subtitle: json['subtitle'],
        image: json['picture'],
        order: json['order']
    );
  }
}