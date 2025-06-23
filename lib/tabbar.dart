import 'package:flutter/material.dart';

class TabbarDemo extends StatelessWidget {
  const TabbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar Demo"),
          bottom: TabBar(tabs: [
            Column(
              children: [
                Icon(Icons.home),
                Text("HOme"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.favorite),
                Text("Favorite"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.person),
                Text("Profile"),
              ],
            ),
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Text(
              "Home",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Favorite",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Profile",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ]),
      ),
    );
  }
}
