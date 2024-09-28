import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class IntroPage extends StatelessWidget {
  var nameFromHome;
  IntroPage(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro"),
      ),
      body: Container(

        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome $nameFromHome",style: TextStyle(fontSize: 40)),

              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Back"))
            ],
          ),
        ),
      ),
    );
  }
}