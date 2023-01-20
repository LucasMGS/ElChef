import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Procure por uma receita',
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.search),
      ),
    );
  }
}
