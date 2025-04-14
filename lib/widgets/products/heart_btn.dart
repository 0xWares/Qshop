import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HeartBtn extends StatefulWidget {
  const HeartBtn({super.key, required this.bgcolor, required this.size});
  final Color bgcolor;
  final double size;
  @override
  State<HeartBtn> createState() => _HeartBtnState();
}

class _HeartBtnState extends State<HeartBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: widget.bgcolor, shape: BoxShape.circle),

      child: IconButton(
        onPressed: () {},
        icon: Icon(
          IconlyBroken.heart,
          color: Colors.white70,
          size: widget.size,
        ),
      ),
    );
  }
}
