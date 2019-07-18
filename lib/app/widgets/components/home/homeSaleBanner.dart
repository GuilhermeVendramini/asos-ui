import 'package:flutter/material.dart';

Widget homeSaleBanner(BuildContext context) {
  return Container(
    height: 260.0,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/sale.png'),
        fit: BoxFit.cover,
      ),
    ),
  );
}
