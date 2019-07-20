import 'package:asos_ui/app/data/categories.dart';
import 'package:asos_ui/app/models/categories.dart';
import 'package:flutter/material.dart';

class CategoriesController with ChangeNotifier {
  List<Map<String, dynamic>> _itemsData;
  List<CategoriesModel> _items = [];
  bool _isItemsLoaded;
}

class Categories extends CategoriesController {
  List<CategoriesModel> get getItems {
    return _items;
  }

  bool get isItemsLoaded {
    return _isItemsLoaded;
  }
}

class CategoriesService extends Categories {
  void loadItems() async {
    if (_isItemsLoaded != null) {
      return null;
    }

    _items = [];
    _itemsData = categoriesData;
    _itemsData.forEach((item) {
      CategoriesModel newItem = CategoriesModel(
        title: item['title'],
        image: item['image'],
      );
      _items.add(newItem);
    });
    _isItemsLoaded = true;
  }
}
