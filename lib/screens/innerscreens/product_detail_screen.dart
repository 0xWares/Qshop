import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:qshop/widgets/product_details_text.dart';
import 'package:qshop/widgets/shimmer_price.dart';
import 'package:shimmer/shimmer.dart';
import 'package:qshop/widgets/product_price_widget.dart';

class ProductDetailScreen extends StatefulWidget {
  static const routeName = '/ProductDetailScreen';
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF1E201E),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.canPop(context) ? Navigator.pop(context) : null;
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white70),
        ),
        centerTitle: true,
        title: Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 64, 120, 241),
          highlightColor: const Color.fromARGB(255, 198, 226, 199),
          child: const Text(
            'Details',

            style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          FancyShimmerImage(
            imageUrl: 'https://i.ibb.co/8r1Ny2n/20-Nike-Force-1-07.png',
            height: size.height * 0.27,
            width: double.infinity,
          ),
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProductDetailsText(
                    label:
                        "Hi there this is wares, what's up. welcome to the Qshop. feel free to shop anything.",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ShimmerPrice(price: "50"),
              ),
            ],
          ),

          Divider(height: 1, color: Colors.white70),
        ],
      ),
    );
  }
}
