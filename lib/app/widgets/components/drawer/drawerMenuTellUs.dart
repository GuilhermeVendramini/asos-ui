import 'package:flutter/material.dart';

Widget drawerMenuTellUs(BuildContext context) {
  Color _textColor = Colors.grey;

  return Container(
    padding: EdgeInsets.all(10.0),
    alignment: Alignment.topLeft,
    child: Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'TELL US WHAT YOU THINK',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: _textColor,
            ),
          ),
          subtitle: _itemLine(),
        ),
        ListTile(
          title: Text(
            'Help Improve the App',
            style: TextStyle(
              color: _textColor,
            ),
          ),
          subtitle: _itemLine(),
        ),
        ListTile(
          title: Text(
            'Rate the app',
            style: TextStyle(
              color: _textColor,
            ),
          ),
          subtitle: _itemLine(),
        ),
      ],
    ),
  );
}

Widget _itemLine() {
  Color _lineColor = Colors.grey[300];
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: _lineColor,
        ),
      ),
    ),
  );
}
