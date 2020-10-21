import 'package:eatwithme/previous_orders.dart';
import 'package:flutter/material.dart';
import 'horizontal.dart';
import 'restaurants.dart';
import 'package:eatwithme/cart.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            children: [
              ClipPath(
                child: Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Container(
                    height: 250,
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(color: Colors.red),
                      accountName: Text("Nishtha"),
                      accountEmail: Text("nishthaarora002@gmail.com"),
                      currentAccountPicture: Stack(
                        children: [
                          CircleAvatar(
                              radius: 35,
                              //backgroundColor: Colors.grey,
                              backgroundImage: AssetImage('background.jpg')),
                          Positioned(
                            left: 40,
                            top: 40,
                            child: IconButton(
                                icon: Icon(Icons.camera_enhance),
                                onPressed: () {},
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    color: Colors.red,
                  ),
                ),
                clipper: CustomClipPath(),
              ),
              ListTile(
                onTap: () {},
                leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    )),
                title: Text(
                  'Account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
                },
                leading: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
                title: Text('Shopping Cart',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PreviousOrders()));
                },
                leading: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
                title: Text('My Orders',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.location_city_outlined,
                  color: Colors.black,
                ),
                title: Text('Location',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(''),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
            ),
          ],

          //title: Center(child: Text("Home Page")),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
              color: Colors.black), //to have drawer of black color
          elevation: 0.0, //to get no appbar show from user side
        ),
        body: Container(
          padding: EdgeInsets.only(left: 12, right: 8),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Search for Restaurant, dishes',
                            suffixIcon: Icon(Icons.search))),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {},
                      )),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Horizontal(),
              SizedBox(
                height: 20.0,
              ),
              Expanded(child: Restaurant()),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.border_all_sharp,
                color: Colors.black,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.yellow[700]),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.yellow[700],
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(''),
            )
          ],
        ));
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
