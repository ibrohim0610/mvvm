import 'package:flutter/material.dart';
class AddReviewRadioButton extends StatefulWidget {
  const AddReviewRadioButton({super.key});

  @override
  _RecommendationWidgetState createState() => _RecommendationWidgetState();
}

class _RecommendationWidgetState extends State<AddReviewRadioButton> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("No"),
        _customRadioButton("No"),
        SizedBox(width: 20,),
        Text("Yes"),
        const SizedBox(width: 20),
        _customRadioButton("Yes"),
      ],
    );
  }

  Widget _customRadioButton(String value) {
    return Radio<String>(
      value: value,
      groupValue: _selectedOption,
      onChanged: (String? newValue) {
        setState(() {
          _selectedOption = newValue;
        });
      },

      activeColor: Colors.red,
      fillColor: MaterialStateProperty.all(Colors.red),
    );
  }
}