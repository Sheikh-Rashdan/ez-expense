import 'package:ez_expense/pages/home_page.dart';
import 'package:flutter/material.dart';

class AppShell extends StatelessWidget {
  const AppShell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(
        // MARK: temp destinations
        children: [
          NavigationDrawerDestination(
            icon: Icon(Icons.home_rounded),
            label: Text("Home"),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.temple_hindu),
            label: Text("Expenses"),
          ),
        ],
      ),
      body: HomePage(),
    );
  }
}
