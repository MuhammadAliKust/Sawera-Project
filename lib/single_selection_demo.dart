import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Selection Demo"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return Card(
              elevation: 10,
              color: selectedIndex == i ? Colors.blue : Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                // padding: const EdgeInsets.only(top: 20, left: 40, right: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                child: ListTile(
                  onTap: () {
                    selectedIndex = i;
                    setState(() {});
                  },
                  leading: Icon(Icons.notifications),
                  title: Text("Selected Index: $selectedIndex"),
                  subtitle: Text("Loop Index: $i"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  // tileColor: Colors.blue,
                ),
              ),
            );
          }),
    );
  }
}
