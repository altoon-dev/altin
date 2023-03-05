import 'package:flutter/material.dart';


class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconText({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(icon, color: const Color(0xFF0092FF),),
      SizedBox(width: 10,),
      Text(text),
    ],);
  }
}