import 'package:asos_ui/app/controllers/recommended.dart';
import 'package:asos_ui/app/models/recommended.dart';
import 'package:asos_ui/app/widgets/components/home/homeBanners.dart';
import 'package:asos_ui/app/widgets/components/home/homeLuxeBox.dart';
import 'package:asos_ui/app/widgets/components/home/homeRecommendedGrid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _main(),
    );
  }

  Widget _main() {
    final _recommendedService = Provider.of<RecommendedService>(context);

    if (_recommendedService.isItemsLoaded == null) {
      _recommendedService.loadItems();
    }

    final List<RecommendedModel> _items = _recommendedService.getItems;

    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          homeBanner01(context),
          SizedBox(
            height: 20.0,
          ),
          homeLuxeBox(context),
          SizedBox(
            height: 20.0,
          ),
          _recommendedService.isItemsLoaded != null
              ? HomeRecommendedGrid(items: _items)
              : CircularProgressIndicator(),
          SizedBox(
            height: 20.0,
          ),
          homeBanner02(context),
        ],
      ),
    );
  }
}
