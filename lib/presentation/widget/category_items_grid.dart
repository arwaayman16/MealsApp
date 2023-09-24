import 'package:flutter/material.dart';
import 'package:meals/data/model/categories.dart';
import 'package:meals/presentation/pages/item_info.dart';

class CategoryItemGrid extends StatelessWidget {
  const CategoryItemGrid({super.key, required this.ci});
  final CategoryItems ci;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 50,
      child: Padding(
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: GestureDetector(
                onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
            builder: (context) => ItemInfo(categoryItems: ci)));
                    },
                child: GridTile(
                  
                    footer: 
                      
                       Container(
                          height: 60,
                          color: Color.fromARGB(255, 77, 43, 27).withOpacity(.5),
                          child: Center(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "${ci.name}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.timer_outlined),
                                          Text("${ci.time}")
                                        ],
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.shopping_bag_rounded),
                                          Text("${ci.level}")
                                        ],
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.attach_money_outlined),
                                          Text("${ci.dol}")
                                        ],
                                      )
                                    ],
                                  )
                                ]),
                          )),
                    
                    child: Image.asset(
                      ci.image,
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
    );
  }
}
