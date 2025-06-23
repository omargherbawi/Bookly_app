import 'package:book_app/Features/Search/presention/Views/widget/search_list_view.dart';
import 'package:book_app/Features/Search/presention/Views/widget/search_section.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchSection(),

        const Expanded(child: SearchListView()),
      ],
    );
  }
}
