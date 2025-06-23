import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 3),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new, size: 28),
        ),
        Expanded(
          child: const Padding(
            padding: EdgeInsets.only(right: 16, top: 16, bottom: 16),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 119, 119, 119),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                hintText: 'Search for books',
                suffixIcon: Icon(Icons.search, color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
