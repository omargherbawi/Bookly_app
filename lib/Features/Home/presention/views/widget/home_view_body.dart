import 'package:book_app/Features/Home/presention/views/widget/best_seller_list_view.dart';
import 'package:book_app/Features/Home/presention/views/widget/custom_app_bar.dart';
import 'package:book_app/Features/Home/presention/views/widget/featured_list_view.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedListView(),
                const SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Flutter Books",
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                BestSellerListView(), // ✅ بتسكرول طبيعي وما في تعارض
              ],
            ),
          ),
        ),
      ],
    );
  }
}
