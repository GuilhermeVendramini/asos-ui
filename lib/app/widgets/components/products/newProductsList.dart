import 'package:asos_ui/app/models/newProducts.dart';
import 'package:asos_ui/app/screens/product.dart';
import 'package:flutter/material.dart';

class NewProductsList extends StatelessWidget {
  final List<NewProductsModel> items;

  NewProductsList({this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) =>
          _buildItem(context, items[index]),
    );
  }

  Widget _buildItem(BuildContext context, NewProductsModel item) {
    return Material(
      child: InkWell(
        onTap: () {
          Route route = MaterialPageRoute(
            builder: (context) => ProductScreen(),
          );
          Navigator.push(context, route);
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[300],
              ),
            ),
          ),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            children: <Widget>[
              CircleAvatar(
                child: Image(
                  image: AssetImage(item.image),
                ),
                radius: 32.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                item.title,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
