import 'package:flutter/material.dart';

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
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          bool isActive = index == activeIndex;
          return Padding(
            padding: const EdgeInsets.all(6),
            child: FeaturedListViewitem(isActive: isActive),
          );
        },
      ),
    );
  }
}
