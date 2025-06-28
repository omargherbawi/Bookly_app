import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/presention/views/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetalisView extends StatelessWidget {
  final BookModel bookmodel;
  const BookDetalisView({super.key, required this.bookmodel});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: BookDetailsViewBody(bookmodel: bookmodel)),
    );
  }
}
