import 'package:asos_ui/app/widgets/components/chooseSex.dart';
import 'package:flutter/material.dart';

Widget buildAppBar(BuildContext context) {
  return AppBar(
    title: ChooseSex(),
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
