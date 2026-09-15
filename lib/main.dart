import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            "List view",
            style: TextStyle(color: Colors.white, fontSize: 23),
          ),
        ),
        body: BodyListView(),
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

Widget _myListView() {
  return ListView(
    padding: EdgeInsets.all(10),
    // scrollDirection: Axis.horizontal,
    // itemExtent: 300,
    children: [
      ListTile(
        title: Text("Sun"),
        subtitle: Text("Today clear"),
        leading: Icon(Icons.sunny),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        title: Text("Cloudy"),
        subtitle: Text("Today cloudy"),
        leading: Icon(Icons.cloud),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        title: Text("Snow"),
        subtitle: Text("Today snow"),
        leading: Icon(Icons.ac_unit),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
    ],
  );
}
