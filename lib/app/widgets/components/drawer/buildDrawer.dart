import 'package:asos_ui/app/widgets/components/drawer/drawerHeader.dart';
import 'package:asos_ui/app/widgets/components/drawer/drawerMainMenu.dart';
import 'package:asos_ui/app/widgets/components/drawer/drawerMenuTellUs.dart';
import 'package:asos_ui/app/widgets/components/drawer/drawerMoreMenu.dart';
import 'package:flutter/material.dart';

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          drawerHeader(context),
          drawerMainMenu(context),
          drawerMoreMenu(context),
          drawerMenuTellUs(context),
        ],
      ),
    ),
  );
}
