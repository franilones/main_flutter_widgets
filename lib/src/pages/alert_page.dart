import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.redAccent,
      ),
      //This button will return back
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.keyboard_arrow_left,
          color: Colors.white,
        ),
        onPressed: () {
          //Push the previous page
          Navigator.pop(context);
        },
        backgroundColor: Colors.red,
      ),
    );
  }
}
