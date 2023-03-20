import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Placeholder(),
    );
  }
}
