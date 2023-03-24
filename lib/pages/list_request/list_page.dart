import 'package:altyn_login/drawer/drawer_item_list.dart';
import 'package:altyn_login/drawer/navigation_drawer_widget.dart';
import 'package:altyn_login/user_data.dart';
import 'package:altyn_login/user_transaction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../TextIcon_widget.dart';
import 'package:altyn_login/route.dart' as route;

import '../../utils.dart';


class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  int? sortColumnIndex;
  bool isAscending = false;

  @override

  Widget build(BuildContext context) {
    late TextEditingController _controller;
    final columns = ['№','Имя','Фамилия','Отчество','ИИН','Номер тел.','Дата регистр-ии',
    'Статус запроса'];


    @override
    void initState() {
      super.initState();
      _controller = TextEditingController();
    }

    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }
    return Scaffold(
        //backgroundColor: Colors.black,
        backgroundColor: Color(0xFF7B7886),
        appBar: AppBar(title: Text(''),
        backgroundColor: Color(0xFF2A3037),
        actions: [
          Row(
          children: [
            const CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage('https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/nhntnouqoyudczy1_1603714428.jpeg'),),
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
        const Icon(Icons.language, color: Colors.white,),
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
      ),],),
        drawer: NavigationDrawerWidget(

        ),
        body: SafeArea(
          child:
            SingleChildScrollView(child:
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15,right: 15,top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              width:400,
                              child:
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Поиск',
                                prefixIcon: Icon(Icons.search,color: Color(0xFFAABCD0),),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.notifications, color: Color(0xFF2A3037),),
                            SizedBox(width: 10,),
                            RichText(
                              text: TextSpan(
                                text: "2",
                                style: GoogleFonts.nunito(color: Color(0xFF0092FF), fontSize: 20, fontWeight: FontWeight.w700),
                                children: <TextSpan>[
                                  TextSpan(text: ' новых запроса', style: GoogleFonts.nunito(
                                      fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xFF1A191E)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   padding: EdgeInsets.only(left:30,right: 30, top: 30),
                  //   child: const Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       TextIcon(text: '№:', icon: Icons.arrow_downward,),
                  //       TextIcon(text: 'Имя:', icon: Icons.arrow_downward),
                  //       TextIcon(text: 'Фамилия:', icon: Icons.arrow_downward),
                  //       TextIcon(text: 'Отчество:', icon: Icons.arrow_downward),
                  //       TextIcon(text: 'ИИН', icon: Icons.arrow_downward),
                  //       TextIcon(text: 'Номер тел.:', icon: Icons.arrow_downward),
                  //       TextIcon(text: 'Дата регист-ии:', icon: Icons.arrow_upward),
                  //       TextIcon(text: 'Статус запроса:', icon: Icons.arrow_drop_down),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 10,),
                  // Container(
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  //   decoration: BoxDecoration(
                  //     color: Color(0xFFF5FCFF),
                  //     borderRadius: BorderRadius.all(Radius.circular(30)),
                  //   ),
                  //   padding: EdgeInsets.only(left:15,right: 15,top: 15,bottom: 15),
                  //   child: const Row(
                  //     //crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text('83'),
                  //       Text('Хабиб'),
                  //       Text('Нурмагомедов'),
                  //       Text('Абдулманапович'),
                  //       Text('880920300123'),
                  //       Text('+7-701-777-77-77'),
                  //       Text('2022-12-09  09:41:15'),
                  //       Text('Ожидает одобрения'),
                  //
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 10,),
                  // Container(
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  //   decoration: BoxDecoration(
                  //     color: Color(0xFFF5FCFF),
                  //     borderRadius: BorderRadius.all(Radius.circular(30)),
                  //   ),
                  //   padding: EdgeInsets.only(left:15,right: 15,top: 15,bottom: 15),
                  //   child: const Row(
                  //     //crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text('83'),
                  //       Text('Хабиб'),
                  //       Text('Нурмагомедов'),
                  //       Text('Абдулманапович'),
                  //       Text('880920300123'),
                  //       Text('+7-701-777-77-77'),
                  //       Text('2022-12-09  09:41:15'),
                  //       Text('Ожидает одобрения'),
                  //
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 10,),
                  // Container(
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.all(Radius.circular(30)),
                  //   ),
                  //   padding: EdgeInsets.only(left:15,right: 15,top: 15,bottom: 15),
                  //   child: const Row(
                  //     //crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text('83'),
                  //       Text('Хабиб'),
                  //       Text('Нурмагомедов'),
                  //       Text('Абдулманапович'),
                  //       Text('880920300123'),
                  //       Text('+7-701-777-77-77'),
                  //       Text('2022-12-09  09:41:15'),
                  //       Text('Ожидает одобрения'),
                  //
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 10,),
                  // Container(
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.all(Radius.circular(30)),
                  //   ),
                  //   padding: EdgeInsets.only(left:15,right: 15,top: 15,bottom: 15),
                  //   child: const Row(
                  //     //crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text('83'),
                  //       Text('Хабиб'),
                  //       Text('Нурмагомедов'),
                  //       Text('Абдулманапович'),
                  //       Text('880920300123'),
                  //       Text('+7-701-777-77-77'),
                  //       Text('2022-12-09  09:41:15'),
                  //       Text('Ожидает одобрения'),
                  //
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 10,),
                  // Container(
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.all(Radius.circular(30)),
                  //   ),
                  //   padding: EdgeInsets.only(left:15,right: 15,top: 15,bottom: 15),
                  //   child: const Row(
                  //     //crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text('83'),
                  //       Text('Хабиб'),
                  //       Text('Нурмагомедов'),
                  //       Text('Абдулманапович'),
                  //       Text('880920300123'),
                  //       Text('+7-701-777-77-77'),
                  //       Text('2022-12-09  09:41:15'),
                  //       Text('Ожидает одобрения'),
                  //
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 10,),
                  // Container(
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.all(Radius.circular(30)),
                  //   ),
                  //   padding: EdgeInsets.only(left:15,right: 15,top: 15,bottom: 15),
                  //   child: const Row(
                  //     //crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text('83'),
                  //       Text('Хабиб'),
                  //       Text('Нурмагомедов'),
                  //       Text('Абдулманапович'),
                  //       Text('880920300123'),
                  //       Text('+7-701-777-77-77'),
                  //       Text('2022-12-09  09:41:15'),
                  //       Text('Ожидает одобрения'),
                  //
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 10,),
                  // Container(
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.all(Radius.circular(30)),
                  //   ),
                  //   padding: EdgeInsets.only(left:15,right: 15,top: 15,bottom: 15),
                  //   child: const Row(
                  //     //crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text('83'),
                  //       Text('Хабиб'),
                  //       Text('Нурмагомедов'),
                  //       Text('Абдулманапович'),
                  //       Text('880920300123'),
                  //       Text('+7-701-777-77-77'),
                  //       Text('2022-12-09  09:41:15'),
                  //       Text('Ожидает одобрения'),
                  //
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 10,),
                  // Container(
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.all(Radius.circular(30)),
                  //   ),
                  //   padding: EdgeInsets.only(left:15,right: 15,top: 15,bottom: 15),
                  //   child: const Row(
                  //     //crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text('83'),
                  //       Text('Хабиб'),
                  //       Text('Нурмагомедов'),
                  //       Text('Абдулманапович'),
                  //       Text('880920300123'),
                  //       Text('+7-701-777-77-77'),
                  //       Text('2022-12-09  09:41:15'),
                  //       Text('Ожидает одобрения'),
                  //
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 10,),
                  // Container(
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.all(Radius.circular(30)),
                  //   ),
                  //   padding: EdgeInsets.only(left:15,right: 15,top: 15,bottom: 15),
                  //   child: const Row(
                  //     //crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text('83'),
                  //       Text('Хабиб'),
                  //       Text('Нурмагомедов'),
                  //       Text('Абдулманапович'),
                  //       Text('880920300123'),
                  //       Text('+7-701-777-77-77'),
                  //       Text('2022-12-09  09:41:15'),
                  //       Text('Ожидает одобрения'),
                  //
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 10,),
                  // Container(
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.all(Radius.circular(30)),
                  //   ),
                  //   padding: EdgeInsets.only(left:15,right: 15,top: 15,bottom: 15),
                  //   child: const Row(
                  //     //crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text('83'),
                  //       Text('Хабиб'),
                  //       Text('Нурмагомедов'),
                  //       Text('Абдулманапович'),
                  //       Text('880920300123'),
                  //       Text('+7-701-777-77-77'),
                  //       Text('2022-12-09  09:41:15'),
                  //       Text('Ожидает одобрения'),
                  //     ],
                  //   ),
                  // ),
          DataTable(
            sortAscending: isAscending,
            sortColumnIndex: sortColumnIndex,
            columns: getColumns(columns),
            //in rows should be users, not allUsers
            rows: getRows(allUsers),
            ),
          ]),
              ),
          ),
    ));
  }

  List<DataColumn> getColumns(List<String> columns){
    return columns.map((String column){
      return DataColumn(
        label: Text(column),
        onSort: onSort,
      );
    }).toList();
  }

  List<DataRow> getRows(List<User> users) => users.map((User user){
    final cells = [user.id, user.firstName, user.lastName, user.thirdName, user.iin, user.phoneNumber, user.dateRegis, user.status];

    //return DataRow(cells: Utils.modelBuilder(cells,(index,cell){
      return DataRow(cells: getCells(cells));

  }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  void onSort(int columnIndex, bool ascending) {
    if(columnIndex == 2) {
      allUsers.sort((user1, user2) =>
          compareString(ascending, '${user1.id}', '${user2.id}'));
    }else if (columnIndex == 0){
      allUsers.sort((user1, user2) =>
          compareString(ascending, user1.firstName, user2.firstName));
    } else if(columnIndex == 1) {
      allUsers.sort((user1, user2) =>
          compareString(ascending, user1.lastName, user2.lastName));
    }


    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
    ascending ? value1.compareTo(value2) : value2.compareTo(value1);
  }
