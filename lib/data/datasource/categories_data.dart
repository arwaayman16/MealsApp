import 'package:flutter/material.dart';
import 'package:meals/data/model/categories.dart';

List<Category> items = [
  Category("summer", Color.fromARGB(255, 133, 51, 216), 1),
  Category("Qick&Easy", Color.fromARGB(255, 173, 60, 29), 2),
  Category("Humburger", Color.fromARGB(255, 75, 187, 79), 3),
  Category("German", Color.fromARGB(255, 169, 188, 72), 4),
  Category("light&lovley", Color.fromARGB(255, 4, 17, 103), 5),
  Category("Exotic", Color.fromARGB(255, 71, 80, 246), 6),
  Category("Asian", Color.fromARGB(255, 126, 111, 139), 7),
  Category("Breakfast", Color.fromARGB(255, 235, 151, 41), 8),
];

List<CategoryItems> summeritems = [
  CategoryItems("assets/images/salmon.jpeg", "salmon", "15 min", "simple",
      "Luxurious", 1, salmonIng, salmonStep),
  CategoryItems("assets/images/orange.jpeg", "orange mousse", "30 min", "hard",
      "Affordeble", 1, "", ""),
  CategoryItems("assets/images/sesar.jpeg", "sesar salat", "15 min", "simple",
      "Luxurious", 2, "", ""),
  CategoryItems("assets/images/qick.jpeg", "shawirma", "15 min", "simple",
      "Affordeble", 2, "", ""),
  CategoryItems("assets/images/ham1.jpeg", "Orignal burger", "15 min", "simple",
      "Luxurious", 3, burgerIng, burgerStep),
  CategoryItems("assets/images/ham2.jpeg", "orange", "15 min", "simple",
      "Affordeble", 3, "", ""),
];
final String salmonIng =
    "Mayonnaise\n Celery \n Onion\n Black pepper\n Lemon juice";

final String salmonStep =
    "drain the salmon and chop the onions and celery.\n  in a bowl, combine the ingredients and mix well. Add additional mayo to reach your desired creaminess. \n  Serve however you please.";
final String burgerIng =
    "Sliced cheese \nFresh red onions \nTomato,\nGreen leaf \nBacon + pineapple + the BBQ\n sauce below";
final String burgerStep =
    "Apply a generous amount of sauce to both buns (see below for our favorite burger sauces).\nPlace pickles, lettuce, tomatoes, and red onion onto the bottom bun\n Place cheesy burger patty over the veggies and cover with top bun";
