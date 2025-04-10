import 'package:flutter/material.dart';

class ListTileText extends StatelessWidget {
  const ListTileText({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text("$label", style: TextStyle(color: Colors.blue, fontSize: 20));
  }
}
