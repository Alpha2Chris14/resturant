import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/meal.dart';

class Item extends StatelessWidget {
  final int id;
  const Item({required this.id});

  @override
  Widget build(BuildContext context) {
    var meal = Provider.of<Meal>(context);
    // print("Hello");
    // print(meal.imageUrl);
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 5,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(10)),
            child: Image.network(
              meal.imageUrl,
              height: 130,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            // color: Colors.red,
            height: 90,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    meal.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12),
                    textDirection: TextDirection.ltr,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.timer_outlined,
                          color: Colors.green,
                          semanticLabel: "20 mins",
                          size: 18,
                        ),
                        Text(
                          "${meal.duration} mins",
                          style: const TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_rate_outlined,
                          semanticLabel: "${meal.ratingCount}",
                          size: 18,
                          color: const Color.fromARGB(255, 221, 206, 68),
                        ),
                        Text(
                          "${meal.ratingCount}",
                          style: const TextStyle(
                            color: Color.fromARGB(255, 221, 206, 68),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${meal.price} \$",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
