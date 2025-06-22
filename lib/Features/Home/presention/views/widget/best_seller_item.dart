import 'package:book_app/Features/Home/presention/views/widget/best_seller_book_cover.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 30),
        const BestSellerBookCover(),
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
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    style: Styles.textStyle20.copyWith(
                      fontFamily: 'GT Sectra Fine',
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                Text('J.K Rowling', style: Styles.textStyle14),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      '19.99 JD',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.star, color: Colors.amber),
                    Text(
                      '4.8',
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text('(250)'),

                    const SizedBox(width: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
