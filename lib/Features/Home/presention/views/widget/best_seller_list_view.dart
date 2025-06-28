import 'package:book_app/Features/Home/presention/view_models/NewstBookCubit/newst_book_cubit.dart';
import 'package:book_app/Features/Home/presention/views/widget/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBookCubit, NewstBookState>(
      builder: (context, state) {
        if (state is NewstBookSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BookItem(bookModel: state.books[index]),
            ),
          );
        } else if (state is NewstBookFailure) {
          return Text(state.message);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
