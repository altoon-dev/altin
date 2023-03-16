import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:altyn_login/widgets.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  String dropdownvalue = '';

  // List of items in our dropdown menu
  var items = [
    'Pass',
    'Fail',
    '',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                color: const Color(0xFF2A3037),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset('images/logo_2.svg'),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "ALTIN FINTECH",
                          style: GoogleFonts.montserrat(
                              fontSize: 24, color: const Color(0xFFD8D8D8)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/nhntnouqoyudczy1_1603714428.jpeg'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Zhursunali Bagdar",
                          style: GoogleFonts.nunito(
                              fontSize: 20, color: Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(Icons.arrow_drop_down, color: Colors.white),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.language,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Рус",
                          style: GoogleFonts.nunito(
                              fontSize: 20, color: Colors.white),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
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
                      colors: [
                        Color(0xFFA4E2F5),
                        Color(0xFFE4EAEE),
                      ],
                    )),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    const CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                          'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/nhntnouqoyudczy1_1603714428.jpeg'),
                    ),
                    Column(
                      children: [
                        Text(
                          'Khabib',
                          style: GoogleFonts.nunito(
                              fontSize: 32, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Abdulmanapovich',
                          style: GoogleFonts.nunito(
                              fontSize: 32, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Nurmagomedov',
                          style: GoogleFonts.nunito(
                              fontSize: 32, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        IconText(
                          icon: Icons.favorite_outlined,
                          text: "20.09.1984",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        IconText(
                          icon: Icons.transgender_outlined,
                          text: "male",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        IconText(icon: Icons.contact_mail, text: '87471948836'),
                        SizedBox(
                          height: 15,
                        ),
                        IconText(
                            icon: Icons.email_outlined,
                            text: 'ronaldoGay@gmail.com')
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        IconText(icon: Icons.call, text: '+7-747-194-88-36'),
                        SizedBox(
                          height: 30,
                        ),
                        IconText(
                            icon: Icons.home_filled,
                            text: 'Almaty, Kazakhstan, Nauryzbay 194'),
                        SizedBox(
                          height: 30,
                        ),
                        IconText(
                            icon: Icons.important_devices_sharp,
                            text: 'kjlknnskndslkgsdnlknslkn'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Дата подачи документов на регистрацию:', style: GoogleFonts.nunito(fontSize: 16),),
                        Text('Дата рассмотрения заявок:', style: GoogleFonts.nunito(fontSize: 16),),
                        Text('Дата регистраций клиента:', style: GoogleFonts.nunito(fontSize: 16),),
                        ],
                    ),
                        ],
                ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "скачать документы",
                              style: GoogleFonts.nunito(fontSize: 20,color: Color(0xFF0092FF), fontWeight: FontWeight.w400),
                            ),
                          ),
                        ), ],
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "KYC REPORTS",
                  style: GoogleFonts.nunito(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF8FA0AB)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                color: const Color(
                  0xFF4F5966,
                ),
                width: double.infinity,
                child: Text(
                  'Identification & Verification Report (Verigram)',
                  style: GoogleFonts.nunito(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Decision',
                    style: GoogleFonts.nunito(fontSize: 18, color: Color(0xFF8FA0AB)),),
                  Text('Reason',
                    style: GoogleFonts.nunito(fontSize: 18, color: Color(0xFF8FA0AB)),),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFF2F5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                       // Expanded(        flex: 2,child:
                            Text(
                            'Passport check:',
                            style: GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.w300),
                          ),

                       const SizedBox(width: 300,),
                       // Expanded(flex: 1, child:
                        DropdownButton(
                            value: dropdownvalue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                       const SizedBox(width: 20,),
                        // Expanded(flex: 1, child:
                         Icon(
                            Icons.done,
                            color: Colors.green,
                        ),
                        const SizedBox(width: 300,),
                        // Expanded(flex: 2,child:
                           Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(),
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                 const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFF2F5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Facial similarity report:',
                          style: GoogleFonts.nunito(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.done,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        const Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFF2F5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Liveness check:',
                          style: GoogleFonts.nunito(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.done,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        const Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                color: const Color(
                  0xFF4F5966,
                ),
                width: double.infinity,
                child: Text(
                  'Sanctions & PEP screening',
                  style: GoogleFonts.nunito(fontSize: 18, color: Colors.white),
                ),
              ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Decision',
              style: GoogleFonts.nunito(fontSize: 18, color: Color(0xFF8FA0AB)),),
            Text('Reason',
              style: GoogleFonts.nunito(fontSize: 18, color: Color(0xFF8FA0AB)),),
          ],
        ),
        const SizedBox(
          height: 10,),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFF2F5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'UN Lists:',
                          style: GoogleFonts.nunito(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.done,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        const Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFF2F5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'KZ Lists:',
                          style: GoogleFonts.nunito(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.done,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        const Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFF2F5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'PEP:',
                          style: GoogleFonts.nunito(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.done,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        const Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFF2F5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Country:',
                          style: GoogleFonts.nunito(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.done,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        const Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                color: const Color(
                  0xFF4F5966,
                ),
                width: double.infinity,
                child: Text(
                  'Address report',
                  style: GoogleFonts.nunito(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Decision',
                    style: GoogleFonts.nunito(fontSize: 18, color: Color(0xFF8FA0AB)),),
                  Text('Reason',
                    style: GoogleFonts.nunito(fontSize: 18, color: Color(0xFF8FA0AB)),),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFF2F5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Address check:',
                          style: GoogleFonts.nunito(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.done,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 300,
                        ),
                        const Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 550),
                child: Text(
                  "Изменить статус пользователя",
                  style: GoogleFonts.nunito(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF8FA0AB)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                color: const Color(0xFFEFF2F5),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: ButtonBar(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              //fixedSize: const Size(120,50),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                            child: Text(
                              'Принять',
                              style: GoogleFonts.nunito(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                            child: Text(
                              'Отклонить',
                              style: GoogleFonts.nunito(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                            child: Text(
                              'Доп. проверка',
                              style: GoogleFonts.nunito(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
}