import 'package:flutter/material.dart';
import 'package:meals/data/model/categories.dart';
import 'package:meals/presentation/pages/category_items.dart';

class CategoriesContainer extends StatelessWidget {
  const CategoriesContainer({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoryItemPage(
                          categoryI: category,
                        ))),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: category.color,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 25.0,
                    offset: Offset(7, 0.75),
                  ),
                ],
              ),
              child: Text(
                "${category.title}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 23, color: const Color.fromARGB(255, 246, 244, 244)),
              ),
              alignment: Alignment.topLeft,
            ),
          ),
        ));
  }
}
