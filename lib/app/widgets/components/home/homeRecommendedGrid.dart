import 'package:asos_ui/app/models/recommended.dart';
import 'package:asos_ui/app/screens/product.dart';
import 'package:flutter/material.dart';

class HomeRecommendedGrid extends StatelessWidget {
  final List<RecommendedModel> items;

  HomeRecommendedGrid({this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        runSpacing: 20.0,
        alignment: WrapAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: <Widget>[for (var item in items) _card(context, item)],
      ),
    );
  }

  Widget _card(BuildContext context, RecommendedModel item) {
    return GestureDetector(
      onTap: () {
        Route route = MaterialPageRoute(
          builder: (context) => ProductScreen(),
        );
        Navigator.push(context, route);
      },
      child: Container(
        width: (MediaQuery.of(context).size.width / 2) - 20,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image(
              image: AssetImage(
                item.image,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              item.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              item.slogan,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
