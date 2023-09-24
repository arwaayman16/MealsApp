import 'package:flutter/material.dart';

class Category {
  final String title;
  final Color? color;
  final int id;
  Category(this.title, this.color, this.id);
}

class CategoryItems {
  final String image, name, time, level, dol, ingradient, steps;
 bool isFav;
  final int Fid;
  CategoryItems(this.image, this.name, this.time, this.level, this.dol,
      this.Fid, this.ingradient, this.steps, {this.isFav=false});
}
