import 'package:eatwithme/cart.dart';
import 'package:flutter/material.dart';

class RestaurantItems extends StatefulWidget {
  final item_name;
  final item_image;
  final item_rating;
  final item_price;

  // final String description;
  RestaurantItems({
    @required this.item_name,
    @required this.item_image,
    @required this.item_rating,
    @required this.item_price,
    // @required this.description
  });
  @override
  _RestaurantItemsState createState() => _RestaurantItemsState();
}

class _RestaurantItemsState extends State<RestaurantItems> {
  bool isSwitched = false;
  var count = 0;
  void add() {
    count++;
  }

  void sub() {
    count--;
  }

  List<RestaurantItems> res_items = [
    RestaurantItems(
        item_name: 'Burger',
        item_image: 'burger.jpg',
        item_rating: '3.5',
        item_price: '#10'),
    RestaurantItems(
        item_name: 'Dossa',
        item_image: 'dossa.jpg',
        item_rating: '3.5',
        item_price: '325'),
    RestaurantItems(
        item_name: 'Frech Fries',
        item_image: 'frenchfries.jpg',
        item_rating: '3.5',
        item_price: '#56'),
    RestaurantItems(
        item_name: 'Noodles',
        item_image: 'noodles.jpg',
        item_rating: '4.5',
        item_price: '356'),
    RestaurantItems(
        item_name: 'Oreo Shake',
        item_image: 'oreo.jpeg',
        item_rating: '3.5',
        item_price: '350'),
    RestaurantItems(
        item_name: 'Pizza',
        item_image: 'pizza.png',
        item_rating: '4.5',
        item_price: '#100'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Restaurant Name',
              style: TextStyle(fontSize: 15.0),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Icon(
                  Icons.location_on_sharp,
                  color: Colors.red,
                ),
                Text(
                  'Restaurant LOcation',
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  'Restaurant review',
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[700]),
                //borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        //add();
                        color:
                        Colors.red;
                      },
                      child: Text('Table'),
                    ),
                    GestureDetector(
                      onTap: () {
                        //add();
                        color:
                        Colors.red;
                      },
                      child: Text('Menu'),
                    ),
                    GestureDetector(
                      onTap: () {
                        //add();
                        setState(() {
                          color:
                          Colors.red;
                        });
                      },
                      child: Text('Grocery'),
                    ),
                    GestureDetector(
                      onTap: () {
                        //add();
                        color:
                        Colors.red;
                      },
                      child: Text('Review'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                //scrollDirection: Axis.vertical,
                itemCount: res_items.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Container(
                          //height: 250,
                          //width: MediaQuery.of(context).size.width / 2 - 30,
                          decoration: BoxDecoration(
                              //boxShadow: [
                              // BoxShadow(blurRadius: 3, color: Colors.grey[200])
                              //],
                              border: Border.all(color: Colors.grey[500]),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(9.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'food/${res_items[index].item_image}',
                                    height: 70,
                                    width: 80,
                                  ),
                                ),
                              ),
                              Text(
                                '${res_items[index].item_name}',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    '${res_items[index].item_rating}',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Icon(Icons.lock_clock),
                                  Text(
                                    '35 min',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('#4677.8',
                                        style: TextStyle(color: Colors.grey)),
                                    GestureDetector(
                                      onTap: () {
                                        add();
                                      },
                                      child: Container(
                                        width: 20,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black)),
                                        child: Center(child: Text('-')),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                                builder: (context) => Cart(
                                                      //here we are passing the values to product details page
                                                      item_name:
                                                          res_items[index]
                                                              .item_name,
                                                      item_image:
                                                          res_items[index]
                                                              .item_image,
                                                      // item_detail_price: rest[index].description,
                                                      item_rating:
                                                          res_items[index]
                                                              .item_rating,
                                                    )));
                                      },
                                      child: Container(
                                        width: 20,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black)),
                                        child: Center(child: Text('+')),
                                      ),
                                    )
                                  ]),
                            ],
                          ),
                        ),
                      ));
                },
              ),
            )
            /*Expanded(
              child: ListView.builder(
                  itemCount: res_items.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[500]),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(9.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'food/${res_items[index].item_image}',
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Icon(Icons.)
                                Text(
                                  '${res_items[index].item_name}',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        '${res_items[index].item_rating}',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Icon(Icons.lock_clock),
                                      Text(
                                        '35 min',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('${res_items[index].item_price}',
                                          style: TextStyle(color: Colors.grey)),
                                      GestureDetector(
                                        onTap: () {
                                          add();
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, right: 20),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: Text('-'),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                                  builder: (context) => Cart(
                                                        //here we are passing the values to product details page
                                                        item_name:
                                                            res_items[index]
                                                                .item_name,
                                                        item_image:
                                                            res_items[index]
                                                                .item_image,
                                                        // item_detail_price: rest[index].description,
                                                        item_rating:
                                                            res_items[index]
                                                                .item_rating,
                                                      )));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black)),
                                          child: Text('+'),
                                        ),
                                      )
                                    ])
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),*/
          ],
        ),
      ),
    );
  }
}

class Restaurants_Des {
  final String rest_name;
  final String rest_image;
  final String rest_rating;

  Restaurants_Des({
    @required this.rest_name,
    @required this.rest_image,
    @required this.rest_rating,
  });
}
