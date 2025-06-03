import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 2.5),
            itemBuilder: (context, i) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.6),
                    border: Border.all(color: Colors.blue, width: 3),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Urdu",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
