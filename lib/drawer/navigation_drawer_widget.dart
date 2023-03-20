import 'package:altyn_login/drawer/drawer_item_list.dart';
import 'package:altyn_login/drawer/drawer_item.dart';
import 'package:altyn_login/pages/settings_panel/setting_page.dart';
import 'package:altyn_login/pages/transaction/transaction_page.dart';
import 'package:altyn_login/pages/user_panel/user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);


  @override
  Widget build(BuildContext context) {
    final safeArea = EdgeInsets.only(top: MediaQuery
        .of(context)
        .viewPadding
        .top);
    final isCollapsed = false;
    return Container(
      //size of collapse
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
              padding: EdgeInsets.symmetric(vertical: 24).add(safeArea),
                //padding: safeArea,
                child: buildHeader(isCollapsed),
              ),
              const SizedBox(height: 24,),
              buildList(items: itemsList, isCollapsed: isCollapsed),

            ],
          ),
        ),
      ),
    );
  }


  Widget buildHeader(bool isCollapsed) => isCollapsed ? SvgPicture.asset('images/drawer_icon.svg',height: 60,width: 60,) :
  Row(
    children: [
      const SizedBox(width: 24,),
      SvgPicture.asset('images/drawer_icon.svg',height: 30,width: 30,),
      const SizedBox(width: 16,),
      Text('ALTIN Fintech', style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,fontSize: 24, color: Color(0xFF2A3037)),)

    ],
  );

  buildList({
    required List<DrawerItem> items,
    required bool isCollapsed
  }) => ListView.separated(
    padding: isCollapsed ? EdgeInsets.zero : padding,
    separatorBuilder: (context, index) => SizedBox(height: 16,),
    shrinkWrap: true,
    primary: false,
    itemCount: items.length,
    itemBuilder: (context,  index) {
      final item = items[index];

      return buildMenuItem(
        isCollapsed: isCollapsed,
        text: item.title,
        icon: item.icon,
        onClicked: () => selectItem(context, index),
      );
    },
  );

  buildMenuItem({
    required bool isCollapsed,
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black;
    final leading = Icon(icon, color: color,);

    return Material(
      color: Colors.transparent,
      child: isCollapsed
      ? ListTile(
        title: leading,
        onTap: onClicked,
      )
          :ListTile(
        leading: leading,
        title: Text(text, style: TextStyle(fontSize: 16, color: color),),
        onTap: onClicked,
      ),
    );
  }

  selectItem(BuildContext context, int index) {
    final navigateTo = (page) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => page,));
    switch (index){
      case 0:
        navigateTo(UserPage());
        break;
      case 1:
        navigateTo(TransactionPage());
        break;
      case 2:
        navigateTo(SettingPage());
        break;
    }
  }
}