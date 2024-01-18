import 'package:flutter/material.dart';
import 'package:quickbite/src/homeScreen.dart';
import 'package:quickbite/src/pages/signin_page.dart';
import 'package:quickbite/src/pages/signup_page.dart';
import 'package:quickbite/src/widgets/home_top_info.dart';
import 'package:quickbite/src/widgets/order_card.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuickBite',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: MainScreen(),
    );
  }
}
