import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/presention/views/widget/custom_details_app_bar_.dart';
import 'package:book_app/Features/Home/presention/views/widget/details_action.dart';
import 'package:book_app/Features/Home/presention/views/widget/featured_list_view_item.dart';
import 'package:book_app/Features/Home/presention/views/widget/rating_widget.dart';
import 'package:book_app/Features/Home/presention/views/widget/similar_book_list_view.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookmodel;
  const BookDetailsViewBody({super.key, required this.bookmodel});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.22),
          child: SizedBox(
            width: 350,
            height: 350,
            child: FeaturedListViewitem(
              bookModel: bookmodel,
              imageurl: bookmodel.volumeInfo!.imageLinks!.thumbnail!,
            ),
          ),
        ),
        Center(
          child: Text(
            textAlign: TextAlign.center,
            bookmodel.volumeInfo!.title!,
            style: Styles.textStyle20.copyWith(
              fontFamily: 'GT Sectra Fine',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 5),

        Center(
          child: Text(
            bookmodel.volumeInfo!.authors![0],
            style: Styles.textStyle16,
          ),
        ),
        const SizedBox(height: 8),
        PageCount(bookModel: bookmodel),
        const SizedBox(height: 13),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: const DetailsAction(),
        ),
        SizedBox(height: 80),

        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "You Can Also Like",
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
          ),
        ),

        SimilarBookListView(bookmodel: bookmodel),
      ],
    );
  }
}
