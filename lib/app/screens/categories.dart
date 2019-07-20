import 'package:asos_ui/app/controllers/categories.dart';
import 'package:asos_ui/app/models/categories.dart';
import 'package:asos_ui/app/widgets/components/categories/categoriesList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _main(),
    );
  }

  Widget _main() {
    final _categoriesService = Provider.of<CategoriesService>(context);

    if (_categoriesService.isItemsLoaded == null) {
      _categoriesService.loadItems();
    }

    final List<CategoriesModel> _items = _categoriesService.getItems;

    return Container(
      padding: EdgeInsets.all(15.0),
      child: _categoriesService.isItemsLoaded != null
          ? CategoriesList(items: _items)
          : CircularProgressIndicator(),
    );
  }
}
