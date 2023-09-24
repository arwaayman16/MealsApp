import 'package:flutter/material.dart';
import 'package:meals/data/datasource/categories_data.dart';
import 'package:meals/data/model/categories.dart';
import 'package:meals/presentation/pages/add_item.dart';
import 'package:meals/presentation/pages/categories.dart';
import 'package:meals/presentation/widget/category_items_grid.dart';

class CategoryItemPage extends StatelessWidget {
  const CategoryItemPage({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
                onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddItem(
                              category: category,
                            ))),
                child: Icon(Icons.add))
          ],
          backgroundColor: Color.fromARGB(255, 49, 30, 23),
          foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
          title: Text("${category.title}"),
        ),
        backgroundColor: const Color.fromARGB(62, 121, 85, 72),
        body:  GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            itemBuilder: (context, i) => CategoryItemGrid(
                ci: items.where((m) {
              return m.Fid == category.id;
            }).toList()[i]),
            itemCount: items
                .where((m) {
                  return m.Fid == category.id;
                })
                .toList()
                .length,
          ),
        );
  }
}
