import 'package:flutter/material.dart';
import 'package:main_flutter_widgets/src/providers/json_manager.dart';
import 'package:main_flutter_widgets/src/utils/icon_string.dart';

import 'alert_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets Example"),
        backgroundColor: Colors.redAccent,
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuLoader.loadData(),
      //initialData: , //Info by default, while is loading
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _createCards(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _createCards(List<dynamic> myList, BuildContext context) {
    final List<Widget> options = [];
    myList.forEach((option) {
      final tempWidg = ListTile(
          title: Text(option['text']),
          leading: getIcon(option['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent),
          onTap: () {
            //On tap it will push the new page
            // final route = MaterialPageRoute(builder: (context) => AlertPage());

            // Navigator.push(context, route);

            Navigator.pushNamed(context, option['route']);
          });
      options.add(tempWidg);
      options.add(Divider(
        thickness: 1.5,
      ));
    });

    return options;
  }
}
