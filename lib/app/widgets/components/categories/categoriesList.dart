import 'package:asos_ui/app/models/categories.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final List<CategoriesModel> items;

  CategoriesList({this.items});

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

  Widget _card(BuildContext context, CategoriesModel item) {
    Orientation _currentOrientation = MediaQuery.of(context).orientation;
    double _width = MediaQuery.of(context).size.width;

    if (_currentOrientation == Orientation.landscape) {
      _width = (_width / 2) - 20;
    }

    return Material(
      color: Colors.grey[200],
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(item.image),
              alignment: Alignment.topRight,
            ),
          ),
          height: 140.0,
          padding: EdgeInsets.all(40.0),
          alignment: Alignment.centerLeft,
          width: _width,
          child: Wrap(
            direction: Axis.horizontal,
            children: <Widget>[
              Text(
                item.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
