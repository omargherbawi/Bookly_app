import 'package:book_app/Features/Home/presention/views/home_view.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigatetohome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset(AssetsData.logo)],
    );
  }
}

void navigatetohome() {
  Future.delayed(Duration(seconds: 3), () {
    Get.to(
      () => const HomeView(),
      transition: Transition.fadeIn,
      duration: const Duration(milliseconds: 250),
    );
  });
}
