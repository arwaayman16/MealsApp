import 'package:flutter/material.dart';
import 'package:meals/data/datasource/categories_data.dart';
import 'package:meals/data/model/categories.dart';
import 'package:meals/presentation/pages/categories.dart';
import 'package:meals/presentation/pages/favorite.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ItemInfo extends StatefulWidget {
  const ItemInfo({super.key, required this.categoryItems});
  final CategoryItems categoryItems;

  @override
  State<ItemInfo> createState() => _ItemInfoState();
}

// Color color = Colors.white;

class _ItemInfoState extends State<ItemInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("${widget.categoryItems.name} "),
          actions: <Widget>[
            GestureDetector(
              child: Icon(
                Icons.favorite,
                color:widget.categoryItems.isFav ? Colors.red : Colors.white,

              ),
              onTap: () {
                setState(() {
                  widget.categoryItems.isFav=!widget.categoryItems.isFav;
                  Fluttertoast.showToast(
                    msg: widget.categoryItems.isFav?"Added to favorite":"Deleted frome favorite",
                  );
                 
                });
              },
           
            ),
          ]),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        // SizedBox(height: 8,),
        Container(
          height: 300,
          width: 400,
          child: Image.asset(
            "${widget.categoryItems.image}",
            width: 200,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),

        Expanded(
          child: ListView(children: [
            Text(
              " Ingredient ",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.brown),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                widget.categoryItems.ingradient,
                style: TextStyle(fontSize: 22),
              ),
            ),
            Text(
              " Steps ",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.brown),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                widget.categoryItems.steps,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
