import 'package:cardapio_client/components/category_item.dart';
import 'package:flutter/material.dart';

import '../mock/mock_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: MOCK_CATEGORIES.map((e) {
        return CategoryItem(
          category: e,
        );
      }).toList(),
    );
  }
}
