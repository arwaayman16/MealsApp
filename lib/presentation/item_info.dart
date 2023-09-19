import 'package:flutter/material.dart';
import 'package:meals/data/model/categories.dart';
import 'package:meals/presentation/pages/categories.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.categoryItems});
  final CategoryItems categoryItems;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("${categoryItems.name} "),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(height: 8,),
          Container(
            height: 300,
            width: 400,
            child: Image.asset(
              "${categoryItems.image}",
              width: 200,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          
          Expanded(
            child: ListView(
            
              children: [Text(
                " Ingredient ",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.w700, color: Colors.brown),
              ),
            
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                categoryItems.ingradient,
                style: TextStyle(fontSize: 22),
              ),
            ),
            Text(
              " Steps ",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w700, color: Colors.brown),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Expanded(
                child: Text(
                  
                  categoryItems.steps,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22,),
                ),
            ),
            ),
                   
                  ]),
          ),
      ]),
    );
  }
}
