import 'package:flutter/material.dart';

class ProductDetailsText extends StatelessWidget {
  const ProductDetailsText({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$label",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white70,
        fontSize: 18,
      ),
    );
  }
}
