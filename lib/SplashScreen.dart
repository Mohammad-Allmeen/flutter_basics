import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/IntroPage.dart';
import 'main.dart';
import 'IntroPage.dart';
class Splashscreen extends StatefulWidget
{
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  //SlashScreen does not contain AppBar the top headline
  // SplashScreen uses the timer class, this class will excute the homecreen code after 2 or 3 sec
  // to apply this function we use init state
  @override
  void initState() { //init is found under Statefull Widget and is for initialization

    super.initState();
    Timer(Duration (seconds: 1), (){ //Duration class
      Navigator.pushReplacement(context,
          MaterialPageRoute(
              builder: (context)=> const MyHomePage(title: 'MyHomePage',)),
      ); //this will replace the splashScreen with Homepage and remove the splash screen from the stack
      // hence once the splash Screen is shown it will not show again
    }
    );
  }
 @override
 Widget build(BuildContext context)
 {
   return Scaffold(
     body: Container(
       width: double.infinity,
       height: double.infinity,
       color: Colors.blue,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           CircleAvatar(
             backgroundImage: AssetImage("assets/images/images.png"),
             backgroundColor: Colors.black,
             radius: 100,
           ),
           Text("Classico", style: TextStyle(
               fontSize: 25,
               fontStyle: FontStyle.italic,
           color: Colors.white
           ),),
         ],
       ),
     ),
   );
 }
}




