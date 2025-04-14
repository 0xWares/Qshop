import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:qshop/widgets/headingtextwidget.dart';
import 'package:qshop/widgets/product_details_text.dart';
import 'package:qshop/widgets/products/heart_btn.dart';
import 'package:qshop/widgets/shimmer_price.dart';
import 'package:shimmer/shimmer.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FancyShimmerImage(
              imageUrl: 'https://i.ibb.co/8r1Ny2n/20-Nike-Force-1-07.png',
              height: size.height * 0.27,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 10, bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: ProductDetailsText(label: "This is Wares" * 10),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ShimmerPrice(price: "50"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
                bottom: 10.0,
              ),
              child: Row(
                children: [
                  const HeartBtn(bgcolor: Colors.blueAccent, size: 20),
                  SizedBox(width: 15),
                  Expanded(
                    child: SizedBox(
                      height: kBottomNavigationBarHeight - 10,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                        ),
                        icon: Icon(IconlyBroken.bag, color: Colors.white70),
                        onPressed: () {},
                        label: Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Divider(height: 1, color: Colors.white70),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                left: 0,
                right: 8,
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Headingtextwidget(label: "Description"),
                  Text(
                    "In phones",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "This is description" * 500,
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
