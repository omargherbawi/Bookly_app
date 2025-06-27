import 'package:flutter/material.dart';

class FeaturedListViewitem extends StatelessWidget {
  final bool isActive;
  final String imageurl;

  const FeaturedListViewitem({
    super.key,
    this.isActive = false,
    required this.imageurl,
  });

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
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: NetworkImage(imageurl),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
