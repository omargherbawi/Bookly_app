import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/data/repos/home_repo_impl.dart';
import 'package:book_app/Features/Home/presention/view_models/SimilarBook/similarbook_cubit.dart';
import 'package:book_app/Features/Home/presention/views/widget/book_details_view_body.dart';
import 'package:book_app/core/utils/server_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetalisView extends StatelessWidget {
  final BookModel bookmodel;
  const BookDetalisView({super.key, required this.bookmodel});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SimilarbookCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: SafeArea(
        child: Scaffold(body: BookDetailsViewBody(bookmodel: bookmodel)),
      ),
    );
  }
}
