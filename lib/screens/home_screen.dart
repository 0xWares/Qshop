import 'package:flutter/material.dart';
import 'package:qshop/widgets/subtitlewidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E201E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Subtitlewidget(label: "Home")],
        ),
      ),
    );
  }
}
