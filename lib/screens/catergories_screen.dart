import 'package:flutter/material.dart';
import 'package:foodie/models/categories.dart';

class CategoroiesScreen extends StatelessWidget {
  const CategoroiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      //* ----------------- sliver-gridview-delegate -----------------
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 3,
      ),
      //* ----------------- grid-view children -----------------
      children: categories.map((categoryTile) {
        return Text(categoryTile.title);
      }).toList(),
    );
  }
}
