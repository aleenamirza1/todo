import 'package:flutter/material.dart';
import 'package:uptodo/Navigationbarpages.dart/ProfilePage.dart';
import 'package:uptodo/Navigationbarpages.dart/homepage.dart';
import 'package:uptodo/drawerviews/SettingScreen.dart';
import 'package:uptodo/drawerviews/favscreen.dart';
import 'package:uptodo/drawerviews/historyscreen.dart';
import 'package:uptodo/Mains/navitmes.dart';

class Constants {
  static var drawerList = [
    NavItems("Home", HomePage(), Icon(Icons.home), Colors.grey),
    NavItems("Profile", Profile1(), Icon(Icons.person), Colors.grey),
    NavItems("Favourites", FavScreen(), Icon(Icons.favorite), Colors.grey),
    NavItems("History", HistoryScreen(), Icon(Icons.history), Colors.grey),
    NavItems("Settings", SettingsScreen(), Icon(Icons.settings), Colors.grey),
    NavItems("Logout", HomePage(), Icon(Icons.logout), Colors.grey)
  ];
}
