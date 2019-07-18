import 'package:asos_ui/app/widgets/components/home/homeLuxeBox.dart';
import 'package:asos_ui/app/widgets/components/home/homeSaleBanner.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _main(),
    );
  }

  Widget _main() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          homeSaleBanner(context),
          SizedBox(
            height: 20.0,
          ),
          homeLuxeBox(context),
        ],
      ),
    );
  }
}
