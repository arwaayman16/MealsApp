import 'package:flutter/material.dart';
import 'package:meals/data/datasource/categories_data.dart';
import 'package:meals/data/model/categories.dart';
import 'package:meals/presentation/pages/categories.dart';
import 'package:meals/presentation/widget/category_items_grid.dart';

class CategoryItemPage extends StatelessWidget {
  const CategoryItemPage({super.key, required this.categoryI});
  final Category categoryI;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 49, 30, 23),
          foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
          title: Text("${categoryI.title}"),
        ),
        backgroundColor: const Color.fromARGB(62, 121, 85, 72),
        body: Container(
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            itemBuilder: (context, i) => CategoryItemGrid(
                ci: summeritems.where((m) {
              return m.Fid == categoryI.id;
            }).toList()[i]),
            itemCount: summeritems
                .where((m) {
                  return m.Fid == categoryI.id;
                })
                .toList()
                .length,
          ),
        ));
  }
}
