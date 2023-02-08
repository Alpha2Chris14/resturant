import 'package:flutter/material.dart';
import 'package:menu/providers/meals.dart';
import 'package:menu/widgets/dashboard_body.dart';
import 'package:menu/widgets/favourite.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late List<Widget> pages;
  var currentIndex = 0;
  void _selectedTab(index) {
    setState(() {
      currentIndex = index;
    });
  }

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
  @override
  void initState() {
    pages = [
      DashboardBody(appBar.preferredSize.height),
      Favourite(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Meals(),
      child: Scaffold(
        appBar: appBar,
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color.fromARGB(224, 6, 184, 172),
          onTap: _selectedTab,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: "Calender"),
            // BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "user"),
          ],
        ),
      ),
    );
  }
}
