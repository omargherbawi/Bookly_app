import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewitem extends StatelessWidget {
  const FeaturedListViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            image: DecorationImage(
              image: AssetImage(AssetsData.book),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
