import 'package:flutter/material.dart';

class Subtitlewidget extends StatelessWidget {
  const Subtitlewidget({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,

        color: const Color.fromARGB(255, 121, 190, 184),
      ),
    );
  }
}
