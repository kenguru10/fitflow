import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final TextStyle hintStyle;
  final TextInputType keyboardType;

  const CustomInput({
    super.key,
    this.keyboardType = TextInputType.name,
    required this.hintText,
    required this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      style: TextStyle(color: Theme.of(context).colorScheme.primary),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
