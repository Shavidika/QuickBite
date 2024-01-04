import 'package:flutter/material.dart';
import 'package:quickbite/src/widgets/food_card.dart';
import 'package:quickbite/src/widgets/food_category.dart';
import 'package:quickbite/src/widgets/home_top_info.dart';
import 'package:quickbite/src/widgets/search.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      children: <Widget>[
        HomeTopInfo(),
        FoodCategory(),
        SizedBox(height: 20),
        Search(),
      ],
    ));
  }
}
