import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButtom extends StatelessWidget {

  const MyButtom({
    super.key,
    required this.icon,
    required this.text,
    this.onPressed
  });

  final IconData icon;
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Material(
        borderRadius: BorderRadius.circular(24),
        elevation: 6,
        color: Colors.white,
        child: ListTile(
          onTap: onPressed,
          leading: Icon(
            icon,
            color: Colors.teal,
          ),
          title: Text(
            text,
            style: const TextStyle(
                color: Colors.teal, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}