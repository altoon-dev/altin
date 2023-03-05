import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:altyn_login/widgets.dart';



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
              color: const Color(0xFF2A3037),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children:[
                  SvgPicture.asset('images/logo_2.svg'),
                  const Text("ALTIN FINTECH"),],),
                  Row(
                    children:[
                  const CircleAvatar(
                    backgroundImage: NetworkImage('https://i.pinimg.com/736x/8a/76/04/8a76047d18e7b0a26524c89326295824.jpg'),
                  radius: 20,),
                  SizedBox(width: 20,),
                  const Text('Zhursunali Bagdar'),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: Color(
                      0xFF65849D,
                    ),),
                  const Icon(
                    Icons.language, color:  Color(0xFF65849D,
                  ),
                  ),
                  const SizedBox(width: 5),
                  const Text("Рус"),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xFF65849D,
                    ),
                  ),],),],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(200.0),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(10),
                  ),
                  border: Border.all(
                    width: 3,
                    color: Colors.transparent,
                  ),
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors:[
                    Colors.blue,
                    Colors.cyanAccent
                  ],
                )
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar( radius: 50,
                  backgroundImage: NetworkImage('https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/nhntnouqoyudczy1_1603714428.jpeg'),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconText(icon: Icons.favorite_outline_outlined, text: "1984",),
                      IconText(icon: Icons.transgender_outlined, text: "male",),
                      Row(children: [
                        Icon(Icons.contact_mail,color: Color(0xFF0092FF),),
                        SizedBox(width: 10,),
                        Text('87471948836'),
                      ],),
                      Row(children: [
                        Icon(Icons.email_outlined,color: Color(0xFF0092FF),),
                        Icon(Icons.email_outlined,color: Color(0xFF0092FF),),
                        SizedBox(width: 10,),
                        Text('ronaldoGay@gmail.com'),
                      ],),
                      ],),
                  Column(
                    children: [
                      Text('Khabib'),
                      Text('Abdulmanapovich'),
                      Text('Nurmagomedov'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Khabib'),
                      Text('Abdulmanapovich'),
                      Text('Nurmagomedov'),
                    ],
                  ),
                    ],
                  ),
            ),
          SizedBox(height: 20,),
            Row(children: [
              Column(
                children: [
                  Text(''),
                  GrayContainer(
                    
                  ),

                ],
              ),
              Column(children: [],),
              Column(children: [],),
            ],)
          ],


              ),
            ),
    );
  }}





