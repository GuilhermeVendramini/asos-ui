import 'package:flutter/material.dart';

Widget drawerMainMenu(BuildContext context) {
  Color _iconColor = Colors.black;

  return Container(
    padding: EdgeInsets.all(20.0),
    alignment: Alignment.topLeft,
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.home,
            color: _iconColor,
          ),
          title: Text(
            'HOME',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: _itemLine(),
        ),
        ListTile(
          leading: Icon(
            Icons.local_mall,
            color: _iconColor,
          ),
          title: Text(
            'BAG',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: _itemLine(),
        ),
        ListTile(
          leading: Icon(
            Icons.favorite_border,
            color: _iconColor,
          ),
          title: Text(
            'SAVED ITEMS',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: _itemLine(),
        ),
        ListTile(
          leading: Icon(
            Icons.perm_identity,
            color: _iconColor,
          ),
          title: Text(
            'MY ACCOUNT',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: _itemLine(),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: _iconColor,
          ),
          title: Text(
            'APP SETTINGS',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: _itemLine(),
        ),
        ListTile(
          leading: Icon(
            Icons.info_outline,
            color: _iconColor,
          ),
          title: Text(
            'HELP & FAQS',
            style: TextStyle(
              fontWeight: FontWeight.w600,
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
