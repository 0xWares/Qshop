import 'package:qshop/screens/innerscreens/product_detail_screen.dart';
import 'package:qshop/widgets/product_price_widget.dart';
import 'package:qshop/widgets/product_details_text.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';

class LatestarrivalWidget extends StatelessWidget {
  const LatestarrivalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: size.height * 0.31,
        child: GestureDetector(
          onTap: () async {
            await Navigator.pushNamed(context, ProductDetailScreen.routeName);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FancyShimmerImage(
                      imageUrl:
                          'https://i.ibb.co/8r1Ny2n/20-Nike-Force-1-07.png',
                      height: size.height * 0.15,
                      width: size.width * 0.33,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: size.width * 0.25,
                  child: Column(
                    children: [
                      ProductDetailsText(label: "This is a product"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              IconlyBroken.heart,
                              color: Colors.white70,
                            ),
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
                      ProductPrice(price: "100"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
