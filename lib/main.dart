import 'package:flutter/material.dart';
import 'package:main_flutter_widgets/src/pages/alert_page.dart';
import 'package:main_flutter_widgets/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Demo app', //home: Home()

      //Routes of the pages
      initialRoute: '/',
      routes: getRoutes(),
      //This will be call if some card doesn't have a route (As default I sent to Alert page)
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
