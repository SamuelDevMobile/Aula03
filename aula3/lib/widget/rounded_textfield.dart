import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    Key? key,
    required this.text,
    required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  final String text;
  final Function(String) onChanged;
  final TextInputType keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      obscureText:  obscureText,
      decoration: InputDecoration(
        labelText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(1000),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
