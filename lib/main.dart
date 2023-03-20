import 'package:altyn_login/pages/admin_panel/admin_home.dart';
import 'package:altyn_login/pages/list_request/list_page.dart';
import 'package:altyn_login/pages/login/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:altyn_login/di/dependency_injection.dart' as sl;
import 'package:altyn_login/route.dart' as route;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sl.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => ListPage(),
    '/login': (context) => LoginScreen(),
    '/home': (context) => AdminHome()},
      title: 'Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
     // onGenerateRoute: route.controller,
      //initialRoute: route.listPage,
      //home:

     // ListPage()
      //AdminHome()
      //LoginScreen.create(),
    );
  }
}