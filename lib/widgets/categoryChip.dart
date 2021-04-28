import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String text;
  final bool isActive;

  const CategoryChip({
    Key? key,
    required this.text,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, bottom: 36.0, left: 20.0),
      child: Chip(
        label: Text(
          text,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.grey,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: isActive ? 20.0 : 0.0,
        backgroundColor: isActive ? Color(0xFFFF243C) : Colors.grey[200],
        shadowColor: isActive ? Color(0xFFFF243C) : Colors.grey[200],
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12.0,
        ),
      ),
    );
  }
}
