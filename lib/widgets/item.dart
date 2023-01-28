import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
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
              "https://nkechiajaeroh.com/wp-content/uploads/2020/12/Nigerian-fried-rice-recipe-main-photo-3.jpg",
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
                  child: const Text(
                    "Fried Rice and Chicken",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    textDirection: TextDirection.ltr,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.timer_outlined,
                          color: Colors.green,
                          semanticLabel: "20 mins",
                          size: 18,
                        ),
                        Text("20 mins")
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star_rate_outlined,
                          semanticLabel: "50",
                          size: 18,
                          color: Color.fromARGB(255, 221, 206, 68),
                        ),
                        Text(
                          "50",
                          style: TextStyle(
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
                      "25.00\$",
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
