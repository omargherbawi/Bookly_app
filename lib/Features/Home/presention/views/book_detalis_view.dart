import 'package:book_app/Features/Home/presention/views/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetalisView extends StatelessWidget {
  const BookDetalisView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: const Scaffold(body: BookDetailsViewBody()));
  }
}
