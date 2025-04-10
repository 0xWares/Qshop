import 'package:flutter/material.dart';
import 'package:qshop/consts/app_consts.dart';
import 'package:qshop/widgets/headingtextwidget.dart';
import 'package:qshop/widgets/products/category_rounded_widget.dart';
import 'package:qshop/widgets/products/latestarrival_widget.dart';
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
          baseColor: const Color.fromARGB(255, 64, 120, 241),
          highlightColor: const Color.fromARGB(255, 198, 226, 199),
          child: const Text(
            'Home',
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.25,
              child: Swiper(
                autoplay: true,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(images[index]);
                },
                itemCount: images.length,
              ),
            ),

            Headingtextwidget(label: "Latest products"),
            const SizedBox(height: 5),
            SizedBox(
              height: size.height * 0.166,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return LatestarrivalWidget();
                },
                itemCount: 10,
              ),
            ),
            Headingtextwidget(label: "Categories"),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              children: List.generate(AppConsts.categoriesList.length, (index) {
                return CategoryRoundedWidget(
                  img: AppConsts.categoriesList[index].image,
                  name: AppConsts.categoriesList[index].name,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
