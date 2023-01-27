import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Image.network(
            "https://nkechiajaeroh.com/wp-content/uploads/2020/12/Nigerian-fried-rice-recipe-main-photo-3.jpg",
            height: 200,
            width: double.infinity,
          ),
          Text("Fried Rice and Chicken"),
          Row(),
          Text("25.00\$")
        ],
      ),
    );
  }
}
