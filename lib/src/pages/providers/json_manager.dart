import 'package:flutter/services.dart' show rootBundle;

class _Menu {
  List<dynamic> options = [];
  _Menu() {
    loadData();
  }

  void loadData() {
    rootBundle.loadString('data/menu_opts.json').then((data) {
      print(data);
    });
  }
}

final menuLoader = new _Menu();
