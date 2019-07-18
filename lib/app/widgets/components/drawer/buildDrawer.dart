import 'package:asos_ui/app/widgets/components/drawer/drawerHeader.dart';
import 'package:asos_ui/app/widgets/components/drawer/drawerMainMenu.dart';
import 'package:flutter/material.dart';

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          drawerHeader(context),
          drawerMainMenu(context),
        ],
      ),
    ),
  );
}
