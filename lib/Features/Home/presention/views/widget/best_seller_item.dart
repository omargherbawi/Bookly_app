import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/presention/views/book_detalis_view.dart';
import 'package:book_app/Features/Home/presention/views/widget/best_seller_book_cover.dart';
import 'package:book_app/Features/Home/presention/views/widget/rating_widget.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BookItem extends StatelessWidget {
  final BookModel bookModel;

  const BookItem({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => const BookDetalisView(),
          transition: Transition.fadeIn,
          duration: const Duration(milliseconds: 250),
        );
      },
      child: Row(
        children: [
          const SizedBox(width: 30),
          BestSellerBookCover(
            imageurl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
          ),
          const SizedBox(width: 25),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.17,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo!.title!,
                      maxLines: 2,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: 'GT Sectra Fine',
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    bookModel.volumeInfo!.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Free', style: Styles.textStyle16),
                      const Spacer(),
                      RatingWidget(),
                      const SizedBox(width: 50),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
