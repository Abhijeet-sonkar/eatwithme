import 'package:flutter/material.dart';

import 'restaurant_items.dart';

class Test1 extends StatefulWidget {
  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        // Text('hb'),
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              //color: Colors.red,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('restaurants/basant.jpeg'),
                fit: BoxFit.cover,
              )),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 3 - 20),
              child: Container(
                //  alignment: Alignment(10, 10),
                height: MediaQuery.of(context).size.height * 2 / 3 + 20,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                // color: Colors.white,
                child: RestaurantItems(),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
