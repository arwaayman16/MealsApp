import 'package:flutter/material.dart';
import 'package:meals/data/datasource/categories_data.dart';
import 'package:meals/data/model/categories.dart';
import 'package:meals/presentation/pages/categories.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({super.key});

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  int id = category.length+1;
  GlobalKey<FormState> key = GlobalKey();
  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
          title: Text("Add category"),
        ),
        body: Form(
            key: key,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: " Enter Ctegory name"),
                  controller: title,
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        id++;
                        category.add(Category(title.text, Colors.blue, id));
                        print(id);
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Categories(
                                    title: 'Categories',
                                  )));
                    },
                    child: Text(
                      " add",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                    ))
              ],
            )));
  }
}
