class Ingredient {
  final int order;
  final String amount, name;

  Ingredient({
    required this.order,
    required this.amount,
    required this.name,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      order: json['order'],
      amount: json['amount'],
      name: json['name'],
    );
  }
}
