import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});
  Widget _categoryItem(String name, Function press) {
    return TextButton(
      onPressed: () => press(),
      child: Text(
        name,
        style: const TextStyle(
          color: Colors.black54,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _categoryItem("All", () {}),
          _categoryItem("Breakfast", () {}),
          _categoryItem("Lunch", () {}),
          _categoryItem("Treats", () {}),
          _categoryItem("Desserts", () {}),
          _categoryItem("Dinner", () {}),
        ],
      ),
    );
  }
}
