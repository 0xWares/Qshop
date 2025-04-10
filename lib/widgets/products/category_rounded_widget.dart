import 'package:flutter/material.dart';

class CategoryRoundedWidget extends StatelessWidget {
  const CategoryRoundedWidget({
    super.key,
    required this.img,
    required this.name,
  });
  final String img, name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(img, height: 50, width: 50),
        const SizedBox(height: 5),
        Text(
          "$name",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white70,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
