import 'package:flutter/material.dart';
import 'package:main_flutter_widgets/src/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Home());
  }
}
