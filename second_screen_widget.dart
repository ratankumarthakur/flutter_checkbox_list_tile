import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final List<String> checkedItems;

  SecondScreen({required this.checkedItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checked Items"),
      ),
      body: ListView.builder(
        itemCount: checkedItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(checkedItems[index]),
          );
        },
      ),
    );
  }
}
