import 'package:book_app/Features/Search/presention/Views/search_view.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 23, top: 4),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, width: 80, height: 80),
          Spacer(),
          IconButton(
            onPressed: () {
              Get.to(() => const SearchView());
            },
            icon: Icon(Icons.search, size: 30),
          ),
        ],
      ),
    );
  }
}
