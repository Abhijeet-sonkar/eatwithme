import 'package:eatwithme/cart.dart';
import 'package:eatwithme/restaurant_items.dart';
import 'package:eatwithme/test.dart';
import 'package:flutter/material.dart';

class Restaurant extends StatelessWidget {
  List<Restaurants> rest = [
    Restaurants(
        name: 'Mcdonalds',
        image: 'mcdonald.jpg',
        rating: '3.5',
        description: 'American Fast Food'),
    Restaurants(
        name: 'Basant',
        image: 'basant.jpeg',
        rating: '4.5',
        description: 'Fast Food and Icecream special'),
    Restaurants(
        name: 'Cakeshop',
        image: 'cakeshop.jpg',
        rating: '3.5',
        description: 'Cake, Pastries, Candies, Consomisation available'),
    Restaurants(
        name: 'Dominol\'s',
        image: 'domino.png',
        rating: '3.5',
        description: 'Pizzas'),
    Restaurants(
        name: 'Fiverr',
        image: 'fiverr.jpeg',
        rating: '4.5',
        description: 'Speacial in Noodles, Manchurian'),
    Restaurants(
        name: 'Happy Singh Dhaba',
        image: 'happysinghdhaba.jpg',
        rating: '4.7',
        description: 'Punjabi style Tadka'),
    Restaurants(
        name: 'Ice Cream Studio',
        image: 'icecreamstudio.jpeg',
        rating: '3.5',
        description: 'Tasty Ice Creams starting at just \{20B9}{30}'),
    Restaurants(
        name: 'Pizza Hut',
        image: 'pizzahut.png',
        rating: '3.9',
        description: ' Hot Cheezie Pizza')
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured Restaurants ',
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: rest.length,
                //physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            /* Cart(
                                //here we are passing the values to product details page
                                item_name: rest[index].name,
                                item_image: rest[index].image,
                                // item_detail_price: rest[index].description,
                              item_rating: rest[index].rating,
                              )));*/
                            Test1(),
                      ));
                      //ProductDetails();
                      //print("text");
                    },
                    child: Container(
                      //padding: EdgeInsets.all(6.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Image.asset(
                              'restaurants/${rest[index].image}',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  rest[index].name,
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width -
                                      MediaQuery.of(context).padding.right -
                                      150.0,
                                  child: Text(
                                    rest[index].description,
                                    style: TextStyle(color: Colors.grey),
                                    softWrap: true,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      rest[index].rating,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 12,
                                      color: Colors.red,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 12,
                                      color: Colors.red,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 12,
                                      color: Colors.red,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 12,
                                      color: Colors.red,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class Restaurants {
  final String name;
  final String image;
  final String rating;
  final String description;
  Restaurants(
      {@required this.name,
      @required this.image,
      @required this.rating,
      @required this.description});
}
