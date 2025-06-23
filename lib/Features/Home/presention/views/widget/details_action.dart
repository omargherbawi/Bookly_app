import 'package:book_app/Features/Home/presention/views/widget/custom_button.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DetailsAction extends StatelessWidget {
  const DetailsAction({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              text: Text(
                '19.99 JD',
                style: Styles.textStyle18.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: Color(0xffEF8262),
              text: Text(
                'Free Preview',
                style: Styles.textStyle18.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
