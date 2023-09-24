import 'package:flutter/material.dart';
import 'package:meals/data/datasource/categories_data.dart';
import 'package:meals/data/model/categories.dart';
import 'package:meals/presentation/pages/add_category.dart';
import 'package:meals/presentation/pages/favorite.dart';
import 'package:meals/presentation/widget/categories_container.dart';

class Categories extends StatefulWidget {
  const Categories({super.key, required this.title});
  final String title;
  @override
  State<Categories> createState() => _CategoriesState();
}

int index = 0;

List<Widget> body = [
  GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (context, i) => CategoriesContainer(
      category: category[i],
    ),
    itemCount: category.length,
  ),
  Favorit(
    title: 'Favorite',
  ),
];

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(62, 121, 85, 72),
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => AddCategory())),
              child: Icon(Icons.add))
        ],
        leading: Icon(Icons.menu),
        backgroundColor: Color.fromARGB(255, 40, 17, 9),
        title: Text(
          index == 0 ? "Categories" : "Favorite",
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 15, 10, 8),
        selectedIconTheme: IconThemeData(size: 30),
        selectedFontSize: 20,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
            print(value);
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
        ],
        backgroundColor: Color.fromARGB(255, 42, 17, 8),
      ),
      body: [
  GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (context, i) => CategoriesContainer(
      category: category[i],
    ),
    itemCount: category.length,
  ),
  Favorit(
    title: 'Favorite',
  ),
].elementAt(index),
    );
  }
}
