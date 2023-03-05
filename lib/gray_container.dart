import 'package:flutter/material.dart';

class GrayContainer extends StatelessWidget {
  final String soz;
  const GrayContainer({
    super.key, required this.soz,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      child: Text('Passport check:'),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
        color: Color(0xFFEFF2F5),
      ),
    );
  }
}