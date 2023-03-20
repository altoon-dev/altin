import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Транзакции'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Placeholder(),
    );
  }
}
