import 'package:flutter/material.dart';

import 'package:iconly/iconly.dart';
import 'package:qshop/screens/auth/login.dart';
import 'package:qshop/screens/innerscreens/viewed_recently.dart';
import 'package:qshop/screens/innerscreens/wishlist.dart';
import 'package:qshop/services/asset_manager.dart';
import 'package:qshop/widgets/headingtextwidget.dart';
import 'package:qshop/widgets/list_tile_text.dart';
import 'package:qshop/widgets/product_details_text.dart';
import 'package:shimmer/shimmer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E201E),
      appBar: AppBar(
        leading: Image.asset("assets/images/bag/shopping_cart.png"),
        title: Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 64, 120, 241),
          highlightColor: const Color.fromARGB(255, 198, 226, 199),
          child: const Text(
            'Qshop',
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
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 15, bottom: 10),
              child: Visibility(
                visible: false,
                child: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.amber, size: 19),

                    Text(
                      "  Please login to explore more!",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,

                        color: const Color.fromARGB(238, 255, 172, 47),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, bottom: 10),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 2,
                      ),
                      image: DecorationImage(
                        image: AssetImage(AssetManager.ordersvg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Md. Abdul Wares",
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 0),
                        Text(
                          "codermdwares@gmail.com",
                          style: TextStyle(color: Colors.white70, fontSize: 19),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.blueGrey),
            SizedBox(height: 2),
            Column(
              children: [
                const Headingtextwidget(label: "Genral"),
                ListTile(
                  onTap: () {},
                  title: ListTileText(label: "All orders"),
                  leading: Icon(
                    IconlyBold.bag,
                    color: const Color.fromARGB(255, 253, 205, 49),
                  ),
                  trailing: Icon(
                    IconlyLight.arrow_right_2,
                    color: Colors.amber,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, Wishlist.routeName);
                  },
                  title: ListTileText(label: "Wishlist"),
                  leading: Icon(
                    IconlyBold.heart,
                    color: const Color.fromARGB(255, 253, 205, 49),
                  ),
                  trailing: Icon(
                    IconlyLight.arrow_right_2,
                    color: Colors.amber,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, ViewedRecently.routeName);
                  },
                  title: ListTileText(label: "Viewed recently"),
                  leading: Icon(
                    IconlyBold.time_circle,
                    color: const Color.fromARGB(255, 253, 205, 49),
                  ),
                  trailing: Icon(
                    IconlyLight.arrow_right_2,
                    color: Colors.amber,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  title: ListTileText(label: "Location"),
                  leading: Icon(
                    IconlyBold.location,
                    color: const Color.fromARGB(255, 253, 205, 49),
                  ),
                  trailing: Icon(
                    IconlyLight.arrow_right_2,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
            Divider(color: Colors.blueGrey),
            SizedBox(height: 2),
            Column(
              children: [
                const Headingtextwidget(label: "Others"),
                ListTile(
                  onTap: () {},
                  title: ListTileText(label: "Privacy policy"),
                  leading: Icon(
                    IconlyBold.paper,
                    color: const Color.fromARGB(255, 253, 205, 49),
                  ),
                  trailing: Icon(
                    IconlyLight.arrow_right_2,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
            Divider(color: Colors.blueGrey),
            SizedBox(height: 2),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.lightBlueAccent,
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              AssetManager.warning,
                              height: 60,
                              width: 60,
                            ),
                            const SizedBox(height: 20),
                            const ProductDetailsText(
                              label: "Are you sure you want to logout?",
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      Login.routeName,
                                    );
                                  },
                                  child: const Text(
                                    "Yes",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "No",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 247, 125, 125),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(IconlyLight.logout),
                    Text(
                      " Logout",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
