//this folder is created for implementing the concepts of Custom widgets

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//stateless widget - we need to call a build function
//statefull widget - we create a state and inside that we call build function and with the set state it recalls and makes new changes in the runtime

class RoundedButton extends StatelessWidget {
  final String btnName; // final becuase there value is not going to be changes
  final Icon? icon; //? is used so that this variable can be null
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback?
      callback; // void function neither takes argument not return any argument it just execute the code, like when we press the button it will execute the set of instructions

  RoundedButton({ //constructor
    required this.btnName, //because we have to give text of button
    this.icon,
    this.bgColor = Colors.blue,
    this.textStyle,
    this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!(); // this will not be null
      },
      child: icon != null ? //conditional statement that if icon is provided then Row(Text and icon both will execute) otherwise only Text
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              // Row is used for taking icons with text
              children: [
                icon!,
                Container(
                  width: 10,
                ),//not null
                Text( btnName, style: textStyle,
                )
              ],
            )
          : Text(
              btnName, style: textStyle,
            ),
      style: ElevatedButton.styleFrom(

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        )),
        shadowColor: bgColor,
        backgroundColor: bgColor,
      ),
    );
  }
}
