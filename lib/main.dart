import 'package:flutter/material.dart';
import 'package:qshop/RootScreen.dart';
import 'package:qshop/screens/innerscreens/product_detail_screen.dart';
import 'package:qshop/screens/innerscreens/viewed_recently.dart';
import 'package:qshop/screens/innerscreens/wishlist.dart';
import 'package:qshop/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Rootscreen(),
      routes: {
        ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
        Wishlist.routeName: (context) => Wishlist(),
        ViewedRecently.routeName: (context) => ViewedRecently(),
      },
    );
  }
}
