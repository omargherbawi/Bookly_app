import 'package:book_app/Features/Home/presention/views/widget/custom_details_app_bar_.dart';
import 'package:book_app/Features/Home/presention/views/widget/details_action.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
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
        Center(
          child: Text(
            'Harry Potter and the Goblet of Fire',
            style: Styles.textStyle20.copyWith(
              fontFamily: 'GT Sectra Fine',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 5),

        Center(child: Text('J.K. Rowling', style: Styles.textStyle16)),
        const SizedBox(height: 8),
        RatingWidget(),
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

        SimilarBookListView(),
      ],
    );
  }
}

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.22,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return FeaturedListViewitem();
        },
      ),
    );
  }
}
