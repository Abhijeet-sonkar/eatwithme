import 'package:eatwithme/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('food/noodles.jpg'),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.expand_more,
              color: Colors.red,
              size: 100,
            )
          ],
        ),
      ),
      bottomSheet: SolidBottomSheet(
        maxHeight: MediaQuery.of(context).size.height / 2,
        headerBar: Container(
          //color: Theme.of(context).primaryColor,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0))),
          child: Center(
            child: Text(
              "Swipe me up",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Container(
          //color: Colors.white,
          decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0))),
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  //decoration,
                  decoration: InputDecoration(
                      //hintText: "Enter your Email",
                      //icon: Icon(Icons.email),
                      ),
                ),
                Text(
                  'Password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        //hintText: "Enter your Password",
                        // icon: Icon(Icons.lock),
                        )),

                // height: 30.0,
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: Container(
                      width: 100.0,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red,
                      ),
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20, fontStyle: FontStyle.italic),
                      )),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Dashboard()));
                    },
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    //  Navigator.push(context,
                    //    MaterialPageRoute(builder: (context) => ForgotPass()));
                  },
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
