import 'package:eatwithme/dashboard.dart';
import 'package:eatwithme/homepage.dart';
import 'package:flutter/material.dart';

class PreviousOrders extends StatefulWidget {
  @override
  _PreviousOrdersState createState() => _PreviousOrdersState();
}

class _PreviousOrdersState extends State<PreviousOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.grey[300],
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.red,
          child: Center(
            child: Text(
              'Orders',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 16),
            child: SingleChildScrollView(
              child: Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Container(
                          child: Column(children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              child: Image.asset(
                                'food/burger.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Order status :',
                                  //titles[ind],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  'Delivered',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Order Type :',
                                  //titles[ind],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  'c',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Order Time  :',
                                  //titles[ind],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  'Delivered',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Restaurant :',
                                  //titles[ind],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  'Delivered',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    '#3500',
                                    //reorder[index].price,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Container(
                                    //color: Colors.red,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(6.0),
                                      // border: Border.all(color: Colors.black)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(3),
                                      child: Text(
                                        'Re-order',
                                        // reorder[index].reorder,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ]),
                          ]),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ),
        Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            child: Container(
              // width: 100.0,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.red,
              ),

              child: Center(
                  child: Text(
                "Back to Dashboard",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
        ),
      ]),
    ));
  }
}
