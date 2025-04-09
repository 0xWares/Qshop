import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:card_swiper/card_swiper.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> images = [
    "assets/images/banners/banner1.png",
    "assets/images/banners/banner2.png",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF1E201E),
      appBar: AppBar(
        leading: Image.asset("assets/images/bag/shopping_cart.png"),
        title: Shimmer.fromColors(
          child: const Text(
            'Home',
            style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          baseColor: const Color.fromARGB(255, 64, 120, 241),
          highlightColor: const Color.fromARGB(255, 198, 226, 199),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.25,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(images[index]);
              },
              itemCount: images.length,
            ),
          ),
        ],
      ),
    );
  }
}
