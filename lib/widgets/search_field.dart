import 'package:flutter/material.dart';

import '../theme/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 6,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: TextField(
          cursorColor: kDarkGreen,
          controller: searchController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide.none,
            ),
            fillColor: kLightGreen,
            filled: true,
            hintText: 'Search Player',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search, color: kDarkGreen),
          ),
        ),
      ),
    );
  }
}
