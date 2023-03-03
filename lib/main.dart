import 'package:altyn_login/pages/admin_panel/admin_home.dart';
import 'package:flutter/material.dart';
import 'login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AdminHome(),
      //initialRoute: '/login',
      //routes: {
      //  'login': (_) => LoginScreen(),

     // }
    );
  }
}