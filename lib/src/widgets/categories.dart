import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/models/category.dart';

import 'commons.dart';
import 'custom_text.dart';

List<Category> categoriesList = [
  Category(name: "Salad", image: "salad.png"),
  Category(name: "Fish", image: "fish.png"),
  Category(name: "Sandwich", image: "sandwich.png"),
  Category(name: "Steak", image: "steak.png"),
  Category(name: "Ice Cream", image: "ice-cream.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        itemCount: categoriesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red[50],
                        offset: Offset(4, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: categoriesList[index].name,
                  size: 15,
                  color: black,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
