import 'package:flutter/material.dart';

Widget drawerHeader(BuildContext context) {
  Color _textColor = Colors.white;

  return Container(
    height: 200.0,
    padding: EdgeInsets.all(20.0),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/blur.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      children: <Widget>[
        Text(
          'asos',
          style: TextStyle(
            color: _textColor,
            fontSize: 50.0,
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          'Save, shop and view orders',
          style: TextStyle(
            color: _textColor,
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign in',
              style: TextStyle(
                color: _textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: _textColor,
              size: 12.0,
            ),
          ],
        ),
      ],
    ),
  );
}
