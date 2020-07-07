import 'package:flutter/material.dart';

//See Icons_helper of flutter --> getIconUsingPrefix
//I use a map for the icons that i will read on the json file
final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
};
Icon getIcon(String iconName) {
  return Icon(_icons[iconName], color: Colors.redAccent);
}
