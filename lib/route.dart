import 'package:flutter/material.dart';
import 'package:altyn_login/pages/admin_panel/admin_home.dart';
import 'package:altyn_login/pages/list_request/list_page.dart';
import 'package:altyn_login/pages/login/view/login_screen.dart';

const String loginPage = 'login';
const String adminPage = 'admin';
const String listPage = 'list';

void login(){}

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case loginPage:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    case adminPage:
      return MaterialPageRoute(builder: (context) => AdminHome());
    case listPage:
      return MaterialPageRoute(builder: (context) => ListPage());
    default:
      throw ('this route name does not exist');
  }
}