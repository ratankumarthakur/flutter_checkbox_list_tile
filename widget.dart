import 'package:flutter/material.dart';
import 'package:tasty_homemade_treats/test2.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> checkedItems = [];

  void _updateCheckedItems(String item, bool isChecked) {
    setState(() {
      if (isChecked) {
        checkedItems.add(item);
      } else {
        checkedItems.remove(item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Example"),
      ),
      body: Column(
        children: <Widget>[
          CheckboxListTile(
            title: Text('Checkbox 1'),
            subtitle: Text("Good one"),
            activeColor: Colors.orange,
            checkColor: Colors.green,
            controlAffinity: ListTileControlAffinity.leading,
            //tristate: true,
            value: checkedItems.contains('Checkbox 1'),
            onChanged: (bool? value) {
              _updateCheckedItems('Checkbox 1', value!);
            },
          ),
          CheckboxListTile(
            title: Text('Checkbox 2'),
            value: checkedItems.contains('Checkbox 2'),
            onChanged: (bool? value) {
              _updateCheckedItems('Checkbox 2', value!);
            },
          ),
          CheckboxListTile(
            title: Text('Checkbox 3'),
            value: checkedItems.contains('Checkbox 3'),
            onChanged: (bool? value) {
              _updateCheckedItems('Checkbox 3', value!);
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(checkedItems: checkedItems),
                ),
              );
            },
            child: Text('Go to Second Screen'),
          ),
        ],
      ),
    );
  }
}


