import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewitem extends StatelessWidget {
  final bool isActive;

  const FeaturedListViewitem({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    double scale = isActive ? 1.04 : 0.88;

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: AnimatedScale(
          scale: scale,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
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
      ),
    );
  }
}
