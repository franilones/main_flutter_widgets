import 'package:flutter/material.dart';
import 'package:main_flutter_widgets/src/pages/alert_page.dart';
import 'package:main_flutter_widgets/src/pages/avatar_page.dart';
import 'package:main_flutter_widgets/src/pages/home.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Home(),
    //Give the name of the routes on the JSON file
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
  };
}
