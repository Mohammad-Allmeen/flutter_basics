import 'package:flutter/material.dart';

void main()
{
  runApp(FlutterApp());
}
// our class should acts like a widgets so we have extend this class with predefined class like statefull or stateless widgets
// the stateless widgets class has abstract function,
// and there is condition that whenever we extend a class and it consist of abstract function then we have to override it,
// this is called runtime polymorphism or function overloading

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // for android we use material and for ios we use Cupertino
    // the app will run and look same on both os, however if we need that our should look and perform different on both the os then we do conditional programming
    return MaterialApp(

      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      //if we want to give colors to differentiate that this is notiication bar, this is action bar so the color combination we get using the theme
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home:  DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold( // Scaffold contain 2 crucial part, 'appbar' and 'body'
        appBar: AppBar(
          title: Text('DashBoard'), // this is the heading of the app
        ),

        body: Container(
          width: double.infinity, // this will occupy the entire screen
          height: double.infinity,
          color: Colors.lightGreen.shade300,
          child:Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(11), // this is used to round the edged of container
                // borderRadius: BorderRadius.only(topLeft: Radius.elliptical(11, 11),bottomRight: Radius.circular(11)), // it want to round the edges of specific corner
                border: Border.all(
                  width: 5,
                  color: Colors.black,
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 7,
                      spreadRadius: 5

                  )
                ],
                shape: BoxShape.circle, // if we use shape then we have to remove the border radius as they will contradict with each other
              ),
            ),
          ),
        ),

        // EXPANDED WIDGETS

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Expanded Widgets is applied on the main axis alignment either row or column
            Expanded(// when in all the container the expanded is used the space available will get equally divided
              flex: 2, // to manually decide how much the space is divided,
              child: Container(
                margin: EdgeInsets.only(bottom: 5),
                width: 100,
                height: 100,
                color: Colors.blue.shade300,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(bottom: 5),
                width: 100,
                height: 100,
                color: Colors.brown.shade200,
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                margin: EdgeInsets.only(bottom: 5),
                width: 100,
                height: 100,
                color: Colors.red.shade300,
              ),
            ),
            Expanded( // this container will take the available space in the right
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(bottom: 5),
                width: 100,
                height: 100,
                color: Colors.yellow.shade300,
              ),
            ),
          ],
        ),


        // MARGIN AND PADDING
        Margin - it the space given for example between two box basically it is the outside space
    Padding - this is the space given within the widgets basically it is the inside space

    body: Padding(
    padding: const EdgeInsets.only(top: 30, left: 34), // all means from all side and only is used for specific direction
    child: Container(

    color: Colors.green,
    margin: EdgeInsets.all(20), // margin will give space from outside
    child: Padding(
    padding: const EdgeInsets.only(top: 20, left: 34), // padding will provide the space from inside
    child: Text("Hello world", style: TextStyle(fontSize: 25, color: Colors.white)),
    )),
    ),




    );
  }
}