import 'package:flutter/material.dart';
import 'package:flutter_basics/bottom_sheets/Theme_bottom_sheets.dart';

class MyProvider extends ChangeNotifier{

  ThemeMode appTheme =ThemeMode.light;
  changeTheme (ThemeMode themeMode){
    appTheme= themeMode;
    notifyListeners();
  }
}