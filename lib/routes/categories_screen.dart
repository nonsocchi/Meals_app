import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(20.0),
        children: dummyCategories
            .map((catData) =>
                CategoryItem(catData.id, catData.title, catData.color))
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300.0,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
