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
          child: Column(
            children: [
              CustomAppBar(),
              FeaturedListView(),
              SizedBox(height: 28),
              Row(
                children: [
                  SizedBox(width: 30),
                  Text(
                    "Best Seller",
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
            ],
          ),
        ),

        SliverFillRemaining(child: BestSellerListView()),
      ],
    );
  }
}
