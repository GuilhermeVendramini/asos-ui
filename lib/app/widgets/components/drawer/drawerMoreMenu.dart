import 'package:flutter/material.dart';

Widget drawerMoreMenu(BuildContext context) {
  Color _textColor = Colors.grey;

  return Container(
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
      color: Colors.grey[300],
      width: 10.0,
    ))),
    padding: EdgeInsets.all(10.0),
    alignment: Alignment.topLeft,
    child: Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'MORE ASOS',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: _textColor,
            ),
          ),
          subtitle: _itemLine(),
        ),
        ListTile(
          title: Text(
            'Gift Vouchers',
            style: TextStyle(
              color: _textColor,
            ),
          ),
          subtitle: _itemLine(),
        ),
        ListTile(
          title: Text(
            'Marketplace',
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
