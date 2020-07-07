import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _Menu {
  List<dynamic> options = [];
  _Menu() {}
  //With async in loadData, it waits to response finish to load before finish constructor
  //This function returns a task that will be solved in the future
  Future<List<dynamic>> loadData() async {
    final response = await rootBundle.loadString('data/menu_opts.json');
    //Convert Json string into a map
    Map dataMenu = json.decode(response);

    options = dataMenu['routes'];

    return options;
  }
}

final menuLoader = new _Menu();
