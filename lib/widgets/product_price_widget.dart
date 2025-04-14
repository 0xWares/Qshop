import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key, required this.price});
  final String price;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color.fromARGB(255, 64, 120, 241),
      highlightColor: const Color.fromARGB(255, 198, 226, 199),
      child: Text(
        "$price\$",
        style: TextStyle(
          color: Colors.teal,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
    );
  }
}
