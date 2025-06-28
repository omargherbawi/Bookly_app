import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PageCount extends StatelessWidget {
  final BookModel bookModel;
  const PageCount({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.auto_stories_outlined, color: Colors.greenAccent),
        SizedBox(width: 6),
        Text(
          '${bookModel.volumeInfo!.pageCount}',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
