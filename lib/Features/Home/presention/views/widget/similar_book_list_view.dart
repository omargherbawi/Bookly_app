import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/presention/view_models/SimilarBook/similarbook_cubit.dart';
import 'package:book_app/Features/Home/presention/views/widget/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatefulWidget {
  final BookModel bookmodel;
  const SimilarBookListView({super.key, required this.bookmodel});

  @override
  State<SimilarBookListView> createState() => _SimilarBookListViewState();
}

class _SimilarBookListViewState extends State<SimilarBookListView> {
  @override
  void initState() {
    BlocProvider.of<SimilarbookCubit>(
      context,
    ).fetchsimilarbook(widget.bookmodel.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarbookCubit, SimilarbookState>(
      builder: (context, state) {
        if (state is SimilarbookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.22,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return FeaturedListViewitem(
                  bookModel: state.books[index],
                  imageurl:
                      state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                      "",
                );
              },
            ),
          );
        } else if (state is SimilarbookFailure) {
          return Text(state.message);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
