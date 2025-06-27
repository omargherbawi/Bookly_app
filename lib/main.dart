import 'package:book_app/Features/Home/data/repos/home_repo_impl.dart';
import 'package:book_app/Features/Home/presention/view_models/FeaturedBookCubit/featured_book_cubit.dart';
import 'package:book_app/Features/Home/presention/view_models/NewstBookCubit/newst_book_cubit.dart';
import 'package:book_app/Features/splash/presention/views/splash_view.dart';
import 'package:book_app/constant.dart';
import 'package:book_app/core/utils/server_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBookCubit(getIt.get<HomeRepoImpl>())
                ..fetchFeaturedBooks(),
        ),

        BlocProvider(
          create: (context) =>
              NewstBookCubit(getIt.get<HomeRepoImpl>())..fetchNewstBook(),
        ),
      ],
      child: GetMaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),

        debugShowCheckedModeBanner: false,
        home: const SplashView(),
      ),
    );
  }
}
