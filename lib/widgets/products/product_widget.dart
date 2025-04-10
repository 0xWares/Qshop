import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:iconly/iconly.dart';
import 'package:flutter/material.dart';
import 'package:qshop/widgets/product_price_widget.dart';
import 'package:qshop/widgets/product_details_text.dart';
import 'package:shimmer/shimmer.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: FancyShimmerImage(
            imageUrl: 'https://i.ibb.co/8r1Ny2n/20-Nike-Force-1-07.png',
            height: size.height * 0.2,
            width: double.infinity,
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Flexible(
              flex: 5,
              child: ProductDetailsText(
                label: "This is a second product with more text",
              ),
            ),
            Flexible(
              child: IconButton(
                onPressed: () {},
                icon: Icon(IconlyBroken.heart, color: Colors.white70),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Shimmer.fromColors(
              baseColor: const Color.fromARGB(255, 64, 120, 241),
              highlightColor: const Color.fromARGB(255, 198, 226, 199),
              child: ProductPrice(price: "50"),
            ),
            Material(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.green,
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.add_shopping_cart_outlined,
                    color: const Color.fromARGB(255, 79, 79, 80),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
