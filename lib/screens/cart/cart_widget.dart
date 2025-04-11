import 'package:flutter/material.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:iconly/iconly.dart';
import 'package:qshop/widgets/product_details_text.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: FancyShimmerImage(
              imageUrl: 'https://i.ibb.co/8r1Ny2n/20-Nike-Force-1-07.png',
              height: size.height * 0.16,
              width: size.height * 0.16,
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: ProductDetailsText(
                    label:
                        "Hello world, I am Waresdfafakdjfkajkdfjakjfakdjfkhahgdjsfhasdhjfhajdsfh",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(IconlyBroken.heart, color: Colors.white70),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
