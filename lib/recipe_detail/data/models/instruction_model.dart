class Instruction {
  final int order;
  final String text;

  Instruction({
    required this.order,
    required this.text,
  });

  factory Instruction.fromJson(Map<String, dynamic> json) {
    return Instruction(
      order: json['order'],
      text: json['text'],
    );
  }
}
