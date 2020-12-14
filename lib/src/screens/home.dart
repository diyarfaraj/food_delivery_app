import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/widgets/commons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "What would you like to eat? ",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Stack(children: [
                  IconButton(
                      icon: Icon(Icons.notifications_none), onPressed: null),
                  Positioned(
                    top: 10,
                    right: 12,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
