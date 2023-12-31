import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  final textStyle =
      const TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('QuickBite', style: textStyle),
              //Text('with your fingertips', style: textStyle),
            ],
          ),
          Icon(Icons.notifications_none,
              size: 32.0, color: Theme.of(context).primaryColor)
        ],
      ),
    );
  }
}
