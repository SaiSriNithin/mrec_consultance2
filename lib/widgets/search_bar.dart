import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   padding: const EdgeInsets.all(16),
    //   child: const TextField(
    //     decoration: InputDecoration(
    //       hintText: 'Search for test',
    //       border: OutlineInputBorder(),
    //       prefixIcon: Icon(Icons.search),
    //     ),
    //   ),
    // );
    // return const TextField(
    //   decoration: InputDecoration(
    //     hintText: 'Search for test',
    //     border: OutlineInputBorder(),
    //     prefixIcon: Icon(Icons.search),
    //   ),
    // );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: (value) {
          // filterSearchResults(value);
        },
        decoration: InputDecoration(
          labelText: "Search",
          hintText: "Search",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
        ),
      ),
    );
  }
}
