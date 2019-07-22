import 'package:asos_ui/app/data/newProducts.dart';
import 'package:asos_ui/app/models/newProducts.dart';
import 'package:flutter/material.dart';

class NewProductsController with ChangeNotifier {
  List<Map<String, dynamic>> _itemsData;
  List<NewProductsModel> _items = [];
  bool _isItemsLoaded;
}

class NewProducts extends NewProductsController {
  List<NewProductsModel> get getItems {
    return _items;
  }

  bool get isItemsLoaded {
    return _isItemsLoaded;
  }
}

class NewProductsService extends NewProducts {
  void loadItems() async {
    if (_isItemsLoaded != null) {
      return null;
    }

    _items = [];
    _itemsData = newProductsData;
    _itemsData.forEach((item) {
      NewProductsModel newItem = NewProductsModel(
        title: item['title'],
        image: item['image'],
      );
      _items.add(newItem);
    });
    _isItemsLoaded = true;
  }
}
