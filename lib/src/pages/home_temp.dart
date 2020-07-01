import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final options = ["One", "Two", "Three", "Four", "Five"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Widgets Example"),
          backgroundColor: Colors.redAccent,
        ),
        body: ListView(children: _createItems2()));
  }

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();
    for (var item in options) {
      final tempWidget = ListTile(
        title: Text(item),
      );
      list
        ..add(tempWidget)
        ..add(Divider(
          thickness: 1.0,
        ));
      //list.add(Divider());
    }
    return list;
  }

  List<Widget> _createItems2() {
    var widg = options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
              title: Text(item),
              subtitle: Text("Test"),
              leading: Icon(Icons.access_alarm),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {}),
          Divider(thickness: 2.0)
        ],
      );
    }).toList();
    return widg;
  }
}
