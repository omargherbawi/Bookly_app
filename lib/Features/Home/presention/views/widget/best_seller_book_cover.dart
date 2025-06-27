import 'package:cached_network_image/cached_network_image.dart';
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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            imageUrl: imageurl,
            fit: BoxFit.fill,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(strokeWidth: 1.5),
            ),
            errorWidget: (context, url, error) =>
                const Center(child: Icon(Icons.broken_image)),
          ),
        ),
      ),
    );
  }
}
