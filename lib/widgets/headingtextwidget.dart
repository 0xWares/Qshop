import 'package:flutter/material.dart';

class Headingtextwidget extends StatelessWidget {
  const Headingtextwidget({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 15),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,

          color: const Color.fromARGB(238, 255, 172, 47),
        ),
      ),
    );
  }
}
