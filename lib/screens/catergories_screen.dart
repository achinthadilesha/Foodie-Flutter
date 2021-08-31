import 'package:flutter/material.dart';
import 'package:foodie/models/dummy_data.dart';
import 'package:foodie/widgets/category_item_widget.dart';

class CategoroiesScreen extends StatelessWidget {
  const CategoroiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      //* ----------------- sliver-gridview-delegate -----------------
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      //* ----------------- grid-view children -----------------
      children: categories.map((categoryTile) {
        return CategoryItemWidget(
          categoryTile.id,
          categoryTile.title,
          categoryTile.color,
        );
      }).toList(),
    );
  }
}
