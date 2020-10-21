import 'package:eatwithme/signin.dart';
import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Filter',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Your Location',
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      //height: 25,
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: new Border.all(
                          color: Colors.black,
                          // width: 1.0,
                        ),
                      ),
                      child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: ' 12 Abesan estate lyana ipaja',
                              hintStyle: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.grey,
                                  height: 3),
                              //border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.all(Radius.zero)),
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.create,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {}))),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.pink[100]),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Menu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
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
                                  'Fast Food',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              //color: Colors.red,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(6.0),
                                // border: Border.all(color: Colors.black)
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Text(
                                  'Grocery',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              //color: Colors.red,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(6.0),
                                // border: Border.all(color: Colors.black)
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Text(
                                  'Drinks',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              //color: Colors.red,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(6.0),
                                // border: Border.all(color: Colors.black)
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Text(
                                  'Ethics',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ])
                    ]),
              ),
              SizedBox(height: 30),
              Container(
                height: 200,
                decoration: BoxDecoration(color: Colors.pink[100]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Table',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          //color: Colors.red,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(6.0),
                            // border: Border.all(color: Colors.black)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(3),
                            child: Text(
                              'Bussiness launch',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          //color: Colors.red,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(6.0),
                            // border: Border.all(color: Colors.black)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(3),
                            child: Text(
                              'Family Banquet',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          //color: Colors.red,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(6.0),
                            // border: Border.all(color: Colors.black)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(3),
                            child: Text(
                              'Dating Dinner',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          //color: Colors.red,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(6.0),
                            // border: Border.all(color: Colors.black)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(3),
                            child: Text(
                              'Dating Dinner',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Available Offers',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Discount',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Details',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Icon(
                Icons.expand_more,
                color: Colors.red,
                size: 50,
              ),
              Container(
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
                      "Search",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                  onTap: () {
                    //Navigator.pushReplacement(context,
                    //   MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                ),
              ),
              SizedBox(height: 30),
              Container(
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
                      "Save",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
