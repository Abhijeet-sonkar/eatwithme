import 'package:eatwithme/dashboard.dart';
import 'package:flutter/material.dart';

class OrderPlaced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            child: Padding(
              padding:
                  EdgeInsets.only(top: 50, left: 25, right: 25, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Text(
                      'Your order has been placed Successfully ',
                      style: TextStyle(
                          color: Colors.greenAccent[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        //  boxShadow: [BoxShadow(color: Colors.grey)],
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Delivery Date:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text(
                            'Delivery Time:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text(
                            'Order Number:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text(
                            'Restaurant:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Amount:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Container(
                      height: 50.0,
                      child: GestureDetector(
                        child: Container(
                          // width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.red,
                          ),

                          child: Center(
                              child: Text(
                            "Back Home",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard()));
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 140,
              left: MediaQuery.of(context).size.width / 2 - 50,
              child: Image.asset(
                'hu1.jpg',
                height: 80,
                width: 100,
              ))
        ],
      ),
    );
  }
}
