import 'package:flutter/material.dart';

class Headingtextwidget extends StatelessWidget {
  const Headingtextwidget({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 0, bottom: 8),
      child: Text(
        "$label",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
