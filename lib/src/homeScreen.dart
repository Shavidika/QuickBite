import 'package:flutter/material.dart';
import 'package:quickbite/src/widgets/bought_foods.dart';
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
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Frequently Bought Foods",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                )),
            GestureDetector(
              onTap: () {},
              child: Text("View All",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  )),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Container(
          child: BoughtFoods(),
        )
      ],
    ));
  }
}
