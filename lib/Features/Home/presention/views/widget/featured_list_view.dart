import 'package:book_app/Features/Home/presention/view_models/FeaturedBookCubit/featured_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_list_view_item.dart';

class FeaturedListView extends StatefulWidget {
  const FeaturedListView({super.key});

  @override
  State<FeaturedListView> createState() => _FeaturedListViewState();
}

class _FeaturedListViewState extends State<FeaturedListView> {
  final ScrollController _controller = ScrollController();
  int activeIndex = 0;
  double itemWidth = 150;

  void _onScroll() {
    double offset = _controller.offset;
    int newIndex = (offset / (itemWidth + 12)).round();

    if (newIndex != activeIndex) {
      setState(() {
        activeIndex = newIndex;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    _controller.removeListener(_onScroll);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                bool isActive = index == activeIndex;
                return Padding(
                  padding: const EdgeInsets.only(left: 2, top: 6, bottom: 6),
                  child: FeaturedListViewitem(
                    isActive: isActive,
                    imageurl:
                        state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                        'https://miblart.com/wp-content/uploads/2024/01/main-3-1-scaled.jpg',
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBookFailure) {
          return Text(state.message);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
