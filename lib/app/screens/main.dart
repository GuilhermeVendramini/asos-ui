import 'package:asos_ui/app/screens/home.dart';
import 'package:asos_ui/app/widgets/components/drawer/buildDrawer.dart';
import 'package:asos_ui/app/widgets/components/utils/buildAppBar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: buildDrawer(context),
          appBar: buildAppBar(context),
          body: TabBarView(
            children: <Widget>[
              HomeScreen(),
              HomeScreen(),
              HomeScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
