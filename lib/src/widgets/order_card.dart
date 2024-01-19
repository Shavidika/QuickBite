import 'package:flutter/material.dart';

class OrderCard extends StatefulWidget {
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFD3D3D3), width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: 45.0,
              height: 80.0,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Align center
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          quantity++;
                        });
                      },
                      child: Icon(Icons.keyboard_arrow_up,
                          color: Color.fromARGB(255, 33, 33, 33)),
                    ),
                    Text(
                      quantity.toString(),
                      style: TextStyle(
                          fontSize: 18.0,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                    InkWell(
                      onTap: () {
                        if (quantity > 1) {
                          setState(() {
                            quantity--;
                          });
                        }
                      },
                      child: Icon(Icons.keyboard_arrow_down,
                          color: Color.fromARGB(255, 14, 14, 14)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/lunch.jpeg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(35.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 5.0,
                        offset: Offset(0.0, 2.0))
                  ]),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Grilled Chicken",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.0),
                Text(
                  "800.0 LKR",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.0),
                Container(
                  height: 25.0,
                  width: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Chicken",
                              style: TextStyle(
                                  color: Color(0xFFD3D3D3),
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 5.0,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              " ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.cancel,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
