import 'package:asos_ui/app/controllers/categories.dart';
import 'package:asos_ui/app/controllers/newProducts.dart';
import 'package:asos_ui/app/controllers/recommended.dart';
import 'package:asos_ui/app/screens/intro.dart';
import 'package:asos_ui/utils/navigationBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    navigationBar();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RecommendedService>(
            builder: (_) => RecommendedService()),
        ChangeNotifierProvider<CategoriesService>(
            builder: (_) => CategoriesService()),
        ChangeNotifierProvider<NewProductsService>(
            builder: (_) => NewProductsService()),
      ],
      child: MaterialApp(
        title: 'ASOS UI',
        theme: ThemeData(
          fontFamily: 'FuturaPT',
          primarySwatch: Colors.grey,
          appBarTheme: AppBarTheme(
            color: Colors.white,
          ),
        ),
        home: IntroScreen(),
      ),
    );
  }
}
