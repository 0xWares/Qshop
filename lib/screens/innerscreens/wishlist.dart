import 'package:flutter/material.dart';
import 'package:qshop/screens/cart/cart_widget.dart';
import 'package:qshop/screens/cart/bottom_checkout.dart';
import 'package:qshop/screens/innerscreens/viewed_recently.dart';
import 'package:qshop/services/asset_manager.dart';
import 'package:shimmer/shimmer.dart';
import 'package:iconly/iconly.dart';

bool isEmpty = false;

class Wishlist extends StatelessWidget {
  static const routeName = "/Wishlist";
  const Wishlist({super.key});

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
                  AssetManager.basket,
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
          backgroundColor: const Color(0xFF1E201E),
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white70),
            ),
            title: Shimmer.fromColors(
              baseColor: const Color.fromARGB(255, 64, 120, 241),
              highlightColor: const Color.fromARGB(255, 198, 226, 199),
              child: const Text(
                'Wish List (6)',
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
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
