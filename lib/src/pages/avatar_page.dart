import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Avatar Page"),
          backgroundColor: Colors.redAccent,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 15.0),
              child: CircleAvatar(
                child: Text("FOD"),
                backgroundColor: Colors.black45,
              ),
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(30.0),
          child: Center(
            child: FadeInImage(
              placeholder: AssetImage("assets/jar-loading.gif"),
              image: NetworkImage(
                  "https://www.linuxadictos.com/wp-content/uploads/linus-torvalds-con.jpg"),
              fadeInDuration: Duration(milliseconds: 300),
            ),
          ),
        ));
  }
}
