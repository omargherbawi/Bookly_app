import 'package:flutter/material.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close, size: 30),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_shopping_cart_outlined, size: 30),
          ),
        ],
      ),
    );
  }
}
