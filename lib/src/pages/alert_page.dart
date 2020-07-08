import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => _showAlert(context),
          child: Text("Show Alert"),
          textColor: Colors.white,
          color: Colors.redAccent,
          shape: StadiumBorder(),
        ),
      ), //This button will return back
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.close,
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

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            title: Text("Alert example!"),
            content: Column(
              //To dont use all the screen
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("This is an example of how to use alerts on Flutter!"),
                FlutterLogo(size: 100.0)
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Ok")),
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Cancel")),
            ],
          );
        });
  }
}
