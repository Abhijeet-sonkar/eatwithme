import 'package:eatwithme/dashboard.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        //height: ,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('background.jpg'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Eat with me",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome!",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Login with your account or the city for being server without login",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 300.0,
              ),
              Container(
                height: 50.0,
                child: GestureDetector(
                  child: Container(
                    // width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),

                    child: Center(
                        child: Text(
                      "Select your city and town",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                  ),
                  onTap: () {
                    // Navigator.pushReplacement(context,
                    //    MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
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
                      "Login to account",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
