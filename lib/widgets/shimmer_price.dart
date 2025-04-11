import 'package:flutter/material.dart';
import 'package:qshop/widgets/product_price_widget.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPrice extends StatelessWidget {
  const ShimmerPrice({super.key, required this.price});
  final String price;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: ProductPrice(price: "$price"),
      baseColor: const Color.fromARGB(255, 64, 120, 241),
      highlightColor: const Color.fromARGB(255, 198, 226, 199),
    );
  }
}
