import 'package:asos_ui/app/widgets/components/utils/chooseSex.dart';
import 'package:flutter/material.dart';

Widget buildAppBar(BuildContext context) {
  return AppBar(
    title: ChooseSex(),
    bottom: TabBar(
      tabs: <Widget>[
        Tab(
          text: 'HOME',
        ),
        Tab(
          text: 'CATEGORIES',
        ),
        Tab(
          text: 'NEW IN',
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.favorite_border),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
    ],
  );
}
