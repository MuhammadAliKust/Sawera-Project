import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return Card(
              elevation: 10,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                // padding: const EdgeInsets.only(top: 20, left: 40, right: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text("Notification Title"),
                  subtitle: Text("Notification Sub Title"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  // tileColor: Colors.blue,
                ),
              ),
            );
          }),
    );
  }
}
