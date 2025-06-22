import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 23, top: 23),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, width: 80, height: 80),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 30)),
        ],
      ),
    );
  }
}
