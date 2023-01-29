import 'package:flutter/material.dart';
import 'package:menu/widgets/dashboard_body.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      title: const Text(
        "Menu",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      actions: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.elliptical(1, 1),
            ),
            color: Color.fromARGB(224, 6, 184, 172),
          ),
          margin: const EdgeInsets.all(8),
          child: const IconButton(
            onPressed: null,
            icon: Icon(
              size: 16,
              color: Colors.white,
              Icons.add_shopping_cart_rounded,
            ),
          ),
        )
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: DashboardBody(appBar.preferredSize.height),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: "Calender"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "user"),
        ],
      ),
    );
  }
}
