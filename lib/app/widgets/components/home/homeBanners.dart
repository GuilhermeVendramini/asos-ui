import 'package:asos_ui/app/screens/product.dart';
import 'package:flutter/material.dart';

Widget homeBanner01(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Route route = MaterialPageRoute(
        builder: (context) => ProductScreen(),
      );
      Navigator.push(context, route);
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      child: Image(
        image: AssetImage('assets/images/sale.png'),
        fit: BoxFit.fitWidth,
      ),
    ),
  );
}

Widget homeBanner02(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Route route = MaterialPageRoute(
        builder: (context) => ProductScreen(),
      );
      Navigator.push(context, route);
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      child: Image(
        image: AssetImage('assets/images/tall.jpg'),
        fit: BoxFit.fitWidth,
      ),
    ),
  );
}
