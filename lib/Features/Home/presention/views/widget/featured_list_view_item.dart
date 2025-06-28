import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/presention/views/book_detalis_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class FeaturedListViewitem extends StatelessWidget {
  final bool isActive;
  final String imageurl;
  final BookModel bookModel;

  const FeaturedListViewitem({
    super.key,
    this.isActive = false,
    required this.imageurl,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    double scale = isActive ? 1.04 : 0.88;

    return GestureDetector(
      onTap: () {
        Get.to(
          () => BookDetalisView(bookmodel: bookModel),
          transition: Transition.fadeIn,
          duration: const Duration(milliseconds: 250),
        );
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: AnimatedScale(
            scale: scale,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: CachedNetworkImage(
                imageUrl: imageurl,
                fit: BoxFit.fill,
                errorWidget: (context, url, error) =>
                    const Center(child: Icon(Icons.error)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
