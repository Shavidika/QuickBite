import 'package:flutter/material.dart';
import 'package:quickbite/src/homeScreen.dart';
import 'package:quickbite/src/pages/order_page.dart';
import 'package:quickbite/src/screens/main_screen.dart';
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
