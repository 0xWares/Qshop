import 'package:flutter/material.dart';

class CartBottomWidget extends StatelessWidget {
  const CartBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kBottomNavigationBarHeight + 10,

      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    child: FittedBox(
                      child: Text(
                        "Total (6 products/9 items)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    child: Text(
                      " Total amount: 20 TK",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: const Color.fromRGBO(149, 223, 241, 0.702),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Checkout")),
          ],
        ),
      ),
    );
  }
}
