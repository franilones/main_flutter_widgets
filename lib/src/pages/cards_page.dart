import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Card Page"),
          backgroundColor: Colors.redAccent,
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardType1(),
            SizedBox(height: 10.0),
            _cardType2(),
            SizedBox(height: 10.0),
            _cardType1(),
            SizedBox(height: 10.0),
            _cardType2(),
            SizedBox(height: 10.0),
            _cardType1(),
            SizedBox(height: 10.0),
            _cardType2(),
            SizedBox(height: 10.0),
            _cardType1(),
            SizedBox(height: 10.0),
            _cardType2(),
            SizedBox(height: 10.0),
            _cardType1(),
            SizedBox(height: 10.0),
            _cardType2(),
            SizedBox(height: 10.0),
          ],
        ));
  }

  Widget _cardType1() {
    return Card(
      //Size of the shadow for the card
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.account_balance,
              color: Colors.red,
            ),
            title: Text("I'm the title"),
            subtitle: Text("This is a text on how it will go"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text("Ok")),
              FlatButton(onPressed: () {}, child: Text("Cancel")),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType2() {
    final myCard = Container(
        child: Column(
      children: <Widget>[
        FadeInImage(
            //Image that we want to use
            image: NetworkImage(
                "https://unsplash.com/photos/twukN12EN7c/download"),
            //Placeholder image while our image is loading
            placeholder: AssetImage("assets/jar-loading.gif"),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover),
        //NetworkImage to load an image from a linkk
        // Image(
        //     image: NetworkImage(
        //         "https://unsplash.com/photos/twukN12EN7c/download")),
        Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Image subtitle",
              style: TextStyle(color: Colors.white),
            ))
      ],
    ));

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            (BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(4.0, 15.0)))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: myCard,
      ),
    );
  }
}
