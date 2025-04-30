import 'package:flutter/material.dart';
import 'package:qshop/services/asset_manager.dart';
import 'package:qshop/widgets/headingtextwidget.dart';
import 'package:qshop/widgets/product_details_text.dart';
import 'package:shimmer/shimmer.dart';

class Login extends StatefulWidget {
  static const routeName = "/Login";
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.canPop(context) ? Navigator.pop(context) : null;
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white70),
        ),
        centerTitle: true,
        title: Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 64, 120, 241),
          highlightColor: const Color.fromARGB(255, 198, 226, 199),
          child: const Text(
            'Login',

            style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Headingtextwidget(label: "Welcome Back"),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),

                  child: ProductDetailsText(
                    label: "Let's get you Loged in so you can start exploring.",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.white70),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: false,
                    child: Text(
                      'Enter a valid email address',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      alignLabelWithHint: true,
                      labelText: "Email",
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye, color: Colors.white70),
                      ),
                      labelStyle: TextStyle(color: Colors.white70),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
