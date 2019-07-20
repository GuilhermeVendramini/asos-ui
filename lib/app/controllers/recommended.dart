import 'package:asos_ui/app/data/recommended.dart';
import 'package:asos_ui/app/models/recommended.dart';
import 'package:flutter/material.dart';

class RecommendedController with ChangeNotifier {
  List<Map<String, dynamic>> _itemsData;
  List<RecommendedModel> _items = [];
  bool _isItemsLoaded;
}

class Recommended extends RecommendedController {
  List<RecommendedModel> get getItems {
    return _items;
  }

  bool get isItemsLoaded {
    return _isItemsLoaded;
  }
}

class RecommendedService extends Recommended {
  void loadItems() async {
    if (_isItemsLoaded != null) {
      return null;
    }

    _items = [];
    _itemsData = recommendedData;
    _itemsData.forEach((item) {
      RecommendedModel newItem = RecommendedModel(
        title: item['title'],
        image: item['image'],
        slogan: item['slogan'],
      );
      _items.add(newItem);
    });
    _isItemsLoaded = true;
  }
}
