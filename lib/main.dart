import 'package:altyn_login/pages/admin_panel/admin_home.dart';
import 'package:altyn_login/pages/login/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:altyn_login/di/dependency_injection.dart' as sl;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sl.init();
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
      home: LoginScreen.create(),
    );
  }
}
