import 'package:flutter/material.dart';
import 'package:menu/widgets/categoriesList.dart';
import 'package:menu/widgets/item.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search),
                hintText: "Search",
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(223, 163, 212, 209),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
              ),
            ),
            // height: 00,
            child: Column(
              children: [
                CategoryList(),
                SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.734,
                    child: GridView(
                      padding: const EdgeInsets.all(10),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 230,
                        childAspectRatio: 1 / 2,
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      // gridDelegate:
                      //     const SliverGridDelegateWithMaxCrossAxisExtent(
                      //   maxCrossAxisExtent: 200,
                      //   childAspectRatio: 1 / 2,
                      //   crossAxisSpacing: 20,
                      //   mainAxisSpacing: 20,
                      // ),
                      children: [
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
