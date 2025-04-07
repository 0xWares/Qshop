import 'package:flutter/material.dart';
import 'package:qshop/screens/cart/cart_screen.dart';
import 'package:qshop/screens/home_screen.dart';
import 'package:qshop/screens/profile_screen.dart';
import 'package:qshop/screens/search_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:iconly/iconly.dart';
import 'package:badges/badges.dart' as badges;

class Rootscreen extends StatefulWidget {
  const Rootscreen({super.key});

  @override
  State<Rootscreen> createState() => _RootscreenState();
}

class _RootscreenState extends State<Rootscreen> {
  late List<Widget> screens;
  late PageController controller;
  var _currentScreen = 0;
  @override
  void initState() {
    // TODO: implement initState
    screens = [HomeScreen(), SearchScreen(), CartScreen(), ProfileScreen()];
    controller = PageController(initialPage: _currentScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: screens,
        onPageChanged: (index) {
          setState(() => _currentScreen = index);
        },
      ),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: const Color(0xFF181C14),
        currentIndex: _currentScreen,
        onTap: (index) {
          setState(() => _currentScreen = index);
          controller.jumpToPage(index); // Add this line
        },
        items: [
          SalomonBottomBarItem(
            icon: Icon(IconlyBroken.home, color: Colors.white70),
            title: Text("Home"),
            selectedColor: Colors.tealAccent,
          ),
          SalomonBottomBarItem(
            icon: Icon(IconlyBroken.search, color: Colors.white70),
            title: Text("Search"),
            selectedColor: const Color.fromARGB(255, 255, 100, 234),
          ),
          SalomonBottomBarItem(
            icon: badges.Badge(
              badgeContent: Text('3'),
              child: Icon(IconlyBroken.bag, color: Colors.white70),
            ),
            title: Text("Cart"),
            selectedColor: const Color.fromARGB(255, 252, 200, 29),
          ),
          SalomonBottomBarItem(
            icon: Icon(IconlyBroken.profile, color: Colors.white70),
            title: Text("Profile"),
            selectedColor: const Color.fromARGB(255, 95, 167, 66),
          ),
        ],
      ),
    );
  }
}
