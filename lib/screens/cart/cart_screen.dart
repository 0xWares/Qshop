import 'package:flutter/material.dart';
import 'package:qshop/screens/cart/cart_widget.dart';
import 'package:qshop/screens/cart/bottom_checkout.dart';
import 'package:shimmer/shimmer.dart';
import 'package:iconly/iconly.dart';

bool isEmpty = false;

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return isEmpty
        ? Scaffold(
          backgroundColor: const Color(0xFF1E201E),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 70),
                Image.asset(
                  "assets/images/bag/shopping_basket.png",
                  width: double.infinity,
                  height: size.height * 0.4,
                ),
                const Text(
                  "Whooops!",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 20),
                const Text(
                  "Your cart is Empty",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 8),
                const Text(
                  "Explore now to fill the cart",
                  style: TextStyle(
                    color: Color.fromARGB(255, 186, 219, 203),
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Explore Now",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
        : Scaffold(
          bottomSheet: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 66, 66, 66),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: CartBottomWidget(),
          ),
          backgroundColor: const Color(0xFF1E201E),
          appBar: AppBar(
            leading: Image.asset("assets/images/bag/shopping_cart.png"),
            title: Shimmer.fromColors(
              child: const Text(
                'Cart (6)',
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              baseColor: const Color.fromARGB(255, 64, 120, 241),
              highlightColor: const Color.fromARGB(255, 198, 226, 199),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(6),
                child: Icon(
                  IconlyBold.delete,
                  color: Colors.redAccent,
                  size: 24,
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const CartWidget(),
                        Divider(height: 1, color: Colors.white70),
                      ],
                    ); // Return CartWidget instead of Scaffold
                  },
                ),
              ),
            ],
          ),
        );
  }
}
