import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            Container(
              color: Color(0xFF2A3037),
              child: Row(
                children: [
                  SvgPicture.asset('images/logo_2.svg'),
                  Text("ALTIN FINTECH"),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://i.pinimg.com/736x/8a/76/04/8a76047d18e7b0a26524c89326295824.jpg'),
                  radius: 20,),
                  Text('Zhursunali Bagdar'),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Color(
                      0xFF65849D,
                    ),),
                  Icon(
                    Icons.language, color: Color(0xFF65849D,
                  ),
                  ),
                  SizedBox(width: 5),
                  Text("Рус"),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xFF65849D,
                    ),
                  ),],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200.0),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(10),
                  ),
                  border: Border.all(
                    width: 3,
                    color: Colors.transparent,
                  ),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors:[
                    Colors.blue,
                    Colors.cyanAccent
                  ],
                )
              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  CircleAvatar( radius: 50,
                  backgroundImage: NetworkImage('https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/nhntnouqoyudczy1_1603714428.jpeg'),),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                          Text('Khabib'),
                          Text('Abdulmanapovich'),
                          Text('Nurmagomedov'),
                        ],
                      )
                    ],
                  )
            ),],
              ),
            ),
    );
  }}
