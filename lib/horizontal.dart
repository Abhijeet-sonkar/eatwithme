import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Horizontal extends StatefulWidget {
  @override
  _HorizontalState createState() => _HorizontalState();
}

class _HorizontalState extends State<Horizontal> {
  List<FoodItems> itemms = [
    FoodItems(name: "Burger", image: "burger.jpg", rating: "4.7", price: "90"),
    FoodItems(
        name: "Noodles", image: "noodles.jpg", rating: "5.0", price: "90"),
    FoodItems(
        name: "French Fries",
        image: "frenchfries.jpg",
        rating: "4.7",
        price: "99"),
    FoodItems(
        name: "Oreo Shake", image: "oreo.jpeg", rating: "2.7", price: "89"),
    FoodItems(name: "Pizza", image: "pizza.png", rating: "3.7", price: "110"),
    FoodItems(name: "pizza", image: "pizza.png", rating: "4.7", price: "100"),
    FoodItems(name: "pizza", image: "pizza.png", rating: "4.3", price: "80"),
    FoodItems(name: "pizza", image: "pizza.png", rating: "4.7", price: "100"),
    FoodItems(name: "pizza", image: "pizza.png", rating: "4.7", price: "100"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        //width: 700,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container(
                  //color: Colors.grey,
                  height: 700,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 4)
                      ]),
                  child: Center(
                    child: Image.asset(
                      'food/${itemms[index].image}',
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }));
  }
}

class FoodItems {
  final String name;
  final String image;
  final String rating;
  final String price;
  FoodItems(
      {@required this.name,
      @required this.image,
      @required this.rating,
      @required this.price});
}
