class  IngredientsModel{
  final String amount, name;

  final int order;

  IngredientsModel({
  required this.amount,
  required this.name,
    required this.order
});
  factory IngredientsModel.fromJson(Map<String,dynamic>json){
    return IngredientsModel(
        amount: json['amount'],
        name: json['name'],
        order: json['order']
    );
  }
}