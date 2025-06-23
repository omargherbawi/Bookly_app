import 'package:book_app/Features/Home/presention/views/widget/custom_details_app_bar_.dart';
import 'package:book_app/Features/Home/presention/views/widget/featured_list_view_item.dart';
import 'package:book_app/Features/Home/presention/views/widget/rating_widget.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.22),
          child: SizedBox(
            width: 350,
            height: 350,
            child: const FeaturedListViewitem(),
          ),
        ),
        Text(
          'Harry Potter and the Goblet of Fire',
          style: Styles.textStyle20.copyWith(
            fontFamily: 'GT Sectra Fine',
            fontWeight: FontWeight.bold,
          ),
        ),

        Text('J.K. Rowling', style: Styles.textStyle16),
        Center(child: RatingWidget()),
      ],
    );
  }
}
