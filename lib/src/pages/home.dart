import 'package:flutter/material.dart';
import 'package:main_flutter_widgets/src/pages/providers/json_manager.dart';

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
    print(menuLoader.options);
    return ListView(
      children: _createCards(),
    );
  }

  List<Widget> _createCards() {
    return [
      ListTile(title: Text("M...")),
      Divider(),
      ListTile(title: Text("M...")),
      Divider(),
      ListTile(title: Text("M...")),
      Divider(),
    ];
  }
}
