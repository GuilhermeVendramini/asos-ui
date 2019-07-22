import 'package:asos_ui/app/controllers/newProducts.dart';
import 'package:asos_ui/app/models/newProducts.dart';
import 'package:asos_ui/app/widgets/components/products/newProductsList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewProductsScreen extends StatefulWidget {
  @override
  _NewProductsScreenState createState() => _NewProductsScreenState();
}

class _NewProductsScreenState extends State<NewProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _main(),
    );
  }

  Widget _main() {
    final _newProductsService = Provider.of<NewProductsService>(context);

    if (_newProductsService.isItemsLoaded == null) {
      _newProductsService.loadItems();
    }

    final List<NewProductsModel> _items = _newProductsService.getItems;

    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'NEW PRODUCTS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          _newProductsService.isItemsLoaded != null
              ? NewProductsList(items: _items)
              : CircularProgressIndicator(),
        ],
      ),
    );
  }
}
