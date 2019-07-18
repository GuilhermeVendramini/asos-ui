import 'package:asos_ui/app/widgets/components/buildAppBar.dart';
import 'package:asos_ui/app/widgets/components/drawer/buildDrawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        drawer: buildDrawer(context),
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          child: _main(),
        ),
      ),
    );
  }

  Widget _main() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Text('Home'),
    );
  }
}
