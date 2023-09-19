import 'package:flutter/material.dart';
import 'package:meals/data/datasource/categories_data.dart';
import 'package:meals/data/model/categories.dart';
import 'package:meals/presentation/widget/categories_container.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(62, 121, 85, 72),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Color.fromARGB(255, 40, 17, 9),
        title: Text(
          "Categories",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, i) => CategoriesContainer(
            category: items[i],
           
          ),
          itemCount: items.length,
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
        ],
        backgroundColor: Color.fromARGB(255, 42, 17, 8),
      ),
    );
  }
}
