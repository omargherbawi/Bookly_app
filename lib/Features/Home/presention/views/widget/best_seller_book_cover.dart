import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerBookCover extends StatelessWidget {
  const BestSellerBookCover({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
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
