import 'package:flutter/material.dart';

Widget homeLuxeBox(BuildContext context) {
  return Container(
    height: 480.0,
    alignment: Alignment.center,
    child: Text(
      'The luxe \nedit',
      style: TextStyle(
        fontSize: 58.0,
        fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.center,
    ),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/luxe.jpg'),
        alignment: Alignment.topCenter,
        fit: BoxFit.cover,
      ),
    ),
  );
}
