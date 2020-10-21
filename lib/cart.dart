import 'package:eatwithme/payment.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cart extends StatefulWidget {
  final item_name;
  final item_image;
  final item_rating;
  // final String description;
  Cart({
    @required this.item_name,
    @required this.item_image,
    @required this.item_rating,
    // @required this.description
  });

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Cart',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Container(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 3,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(14.0),
                                  // border: Border.all(color: Colors.black)
                                ),
                                child: Row(
                                  children: [
                                    Card(
                                      color: Colors.white,
                                      child: Row(

                                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(8),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                child: Image.asset(
                                                  'food/pizza.png',
                                                  height: 80,
                                                  width: 80,
                                                ),
                                              ),
                                            ),
                                            // Icon(Icons.)
                                            Column(children: [
                                              Text(
                                                '\$${widget.item_name}',
                                                style:
                                                    TextStyle(fontSize: 18.0),
                                              ),
                                              SizedBox(
                                                height: 6.0,
                                              ),
                                              /* Text(
                                      'Corn, Cheese',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                      SizedBox(
                                        height: 10.0,
                                      ),*/
                                            ]),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                          ]),
                                    ),
                                    IconButton(
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {})
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Item()',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text('\$255',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('\$100',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                      ]),
                  SizedBox(height: 16.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Payment()));
                    },
                    child: Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width / 2,
                      //color: Colors.red,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6.0),
                        // border: Border.all(color: Colors.black)
                      ),
                      child: Center(
                        child: Text(
                          'Check-out',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
