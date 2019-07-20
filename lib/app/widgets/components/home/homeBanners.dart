import 'package:flutter/material.dart';

Widget homeBanner01(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: Image(
      image: AssetImage('assets/images/sale.png'),
      fit: BoxFit.fitWidth,
    ),
  );
}

Widget homeBanner02(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: Image(
      image: AssetImage('assets/images/tall.jpg'),
      fit: BoxFit.fitWidth,
    ),
  );
}
