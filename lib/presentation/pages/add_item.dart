import 'package:flutter/material.dart';
import 'package:meals/data/datasource/categories_data.dart';
import 'package:meals/data/model/categories.dart';
import 'package:meals/presentation/pages/category_items.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key, required this.category});
  final Category category;
  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  GlobalKey<FormState> key = GlobalKey();

  TextEditingController image = TextEditingController(),
      name = TextEditingController(),
      time = TextEditingController(),
      level = TextEditingController(),
      dol = TextEditingController(),
      ingradient = TextEditingController(),
      steps = TextEditingController();
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
                  decoration: InputDecoration(hintText: " Enter Image url"),
                  controller: image,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: " Enter Meal name"),
                  controller: name,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: " Enter Time needed"),
                  controller: time,
                ),
                TextFormField(
                  decoration:
                      InputDecoration(hintText: " Enter preparation level  "),
                  controller: level,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: " The coast "),
                  controller: dol,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: " Enter ingradient"),
                  controller: ingradient,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: " Enter steps"),
                  controller: steps,
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        items.add(CategoryItems(
                            image.text,
                            name.text,
                            time.text,
                            level.text,
                            dol.text,
                            widget.category.id,
                            ingradient.text,
                            steps.text));
                        //print(id);
                      });
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryItemPage(
                                    category:widget.category
                                      
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
