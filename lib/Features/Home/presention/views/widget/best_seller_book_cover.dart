import 'package:flutter/material.dart';

class BestSellerBookCover extends StatelessWidget {
  final String imageurl;

  const BestSellerBookCover({super.key, required this.imageurl});

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
              image: NetworkImage(imageurl),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
