import 'package:flutter/material.dart';
import 'package:meals/data/datasource/categories_data.dart';
import 'package:meals/data/model/categories.dart';
import 'package:meals/presentation/pages/categories.dart';
import 'package:meals/presentation/widget/category_items_grid.dart';

class Favorit extends StatelessWidget {
  const Favorit({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    // List<CategoryItems> fav = [];
    // Categories(title: title).title=title;
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color.fromARGB(255, 49, 30, 23),
        //   foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
        //   title: Text(title),
        // ),
        backgroundColor: const Color.fromARGB(62, 121, 85, 72),
        body: Container(
            child: GridView.builder(
          itemCount:
              items.where((element) => element.isFav == true).toList().length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemBuilder: (context, i) => CategoryItemGrid(
              ci: items.where((element) => element.isFav == true).toList()[i]),
        )));
  }
}
