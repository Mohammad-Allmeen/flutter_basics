import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/rounded_btn.dart';
import 'package:intl/intl.dart';
import 'package:flutter_basics/ui_helper/util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  //the ignition point program starts from here
  runApp(
      const MyApp_()); // it automatically gets created as flutter is aware we are going to create the app
}

class MyApp_ extends StatelessWidget {
  // this is inheritance, it will inherit the parent class property
  const MyApp_({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // as the build will be called the material app will be returned which would create the app

    return MaterialApp(
      title: 'Flutter container',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue, //top heading color, whenever we will build a screen and we do not give color so it will automatically take this color
        textTheme: const TextTheme(
            headlineLarge: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            headlineSmall: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic)),

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
          title:
          'Flutter Demo Home page'), //this is launcher or Home screen which is by default
    );
  }
}

class MyHomePage extends StatefulWidget {
  // whenever the value is changing it, it will be performed with the help of statefull widgets, and instant change is done
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  callBack() {
    print("Clicked!");
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var emailText =
    TextEditingController(); // variable to fetch the email entered by the user
    var passText =
    TextEditingController(); // variable to fetch the password entered by the user
    var ucode = TextEditingController();
    var arrNames = [
      'Rohit',
      'Virat',
      'Dhoni',
      'Sachin',
      'De villiers',
      'Steve Smith',
      'Buttler',
      'Shami',
      'Dale Stenyn',
      'Jimmy',
      'Stuart',
      'Jaheer'
    ];
    var arrColors = [
      Colors.green,
      Colors.white,
      Colors.blueAccent,
      Colors.red,
      Colors.yellow,
      Colors.brown,
      Colors.purple,
      Colors.cyanAccent,
    ];
    var time = DateTime
        .now(); //this shows the current data and time, it is static function means we have to just give reference
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.lightGreen,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      StackWidget
      It is used when we want to overlay a widget over another widget basically the smaller widget over a bigger widget

      body: Center(
      child: Container(
      width: 300,
      height: 300,
      child: Stack(
        children: [
          Container(
            width: 200,
            height: 200,

            color: Colors.black,
          ),
          Positioned(
            top: 21,
            left: 21,
            child: Container(
              child: Text("Hello", style: TextStyle(fontSize: 25),),
              width: 160,
              height: 160,
              color: Colors.greenAccent,
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.lightBlue,
          )
        ],
      ),
    ),
    ),


    Creating a new custom widget

    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Container(
    width: 150,
    height: 50,
    child: RoundedButton(btnName: " PLAY",
    icon: Icon(Icons.play_arrow_rounded),
    callback: (){
    print("Playing!!");
    },
    textStyle: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),
    ),
    ),
    Container(
    height: 10,
    ),
    Container(
    width: 150,
    height: 50,
    child: RoundedButton(btnName: " Press",
    callback: (){
    print("Icon pressed");
    },
    bgColor: Colors.green,
    textStyle: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),
    ),
    ),
    ],
    ),
    )

    WRAP widget- if the items exceeds the limit of the screen that will move downwards to the next line

    body: Container(
    height: double.infinity,
    width: double.infinity,
    child: Wrap(
    direction: Axis.horizontal, //by default is vertical
    spacing: 15, //according to the axis direction
    runSpacing: 15, //if i want to give horizontal spacing
    alignment: WrapAlignment.spaceBetween,
    children: [
    Container(
    width: 100,
    height:100,
    color: Colors.green,
    ),
    Container(
    width: 100,
    height:100,
    color: Colors.blue,
    ),
    Container(
    width: 100,
    height:100,
    color: Colors.black,
    ),
    Container(
    width: 100,
    height:100,
    color: Colors.lightBlue,
    ),
    Container(
    width: 100,
    height:100,
    color: Colors.purple,
    ),
    Container(
    width: 100,
    height:100,
    color: Colors.brown,
    )

    ],
    ),
    ),

    // Constraint Widget - it apply restriction to the widget when we want constraint on any widget
    // constraintbox is applied for the providing the constraint

    body: ConstrainedBox(
    constraints: BoxConstraints(
    maxWidth: 200,
    maxHeight: 200,
    minWidth: 150,
    minHeight: 150,
    ) ,
    child: Column(
    children: [
    Text("Hello World", style: TextStyle(fontSize: 25), overflow: TextOverflow.fade,),
    ElevatedButton(onPressed: (){}, child: Text("Click"),
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue
    ),)
    ],
    ), //overflow.fade will fade the content when it goes outside of constraint box
    ),



    Sized box is used for defining or when we want to use box for particular size or when there is size constraint
    Sizebox.square, Sizebox.expanded, Sizebox.shrink
    same as constainer but in size box we cannot use the feature of decoration, background color

    body: Wrap(
    direction: Axis.vertical,
    children: [
    SizedBox.square(
    dimension: 200,
    child: ElevatedButton(onPressed: (){
    }, child: Text("Click")),
    ),
    SizedBox(
    height: 20,  //when we want to guve fixed spacing
    ),
    SizedBox.square(
    dimension: 150,
    child: ElevatedButton(onPressed: (){},
    child: Text("Click")),
    )
    ],
    )




    RICH TEXT- is used give amazing beautiful design to text to particular text

    body:
    Row(
    children: [
    Text("Hello ", style: TextStyle(fontSize: 20, color: Colors.black),),
    Text("World!", style: TextStyle(fontSize: 34, color: Colors.blueAccent, fontWeight: FontWeight.bold),)
    // For this we created row multiple text and all
    ],
    ),
    Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    RichText(text: TextSpan(
    style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300), //Default style
    children: <TextSpan>[
    TextSpan(text: "Hello "), // this will follow default style
    TextSpan(text: "World ",style: TextStyle(color: Colors.blue, fontSize: 40, fontWeight: FontWeight.w500)),
    TextSpan(text: " Welcome", style: TextStyle(color: Colors.greenAccent, fontSize: 50, fontWeight: FontWeight.w700))
    ]
    )
    ),

    // ICON WIDGET

    Container(
    child: Icon(Icons.add_circle, size: 50,
    color: Colors.green,
    ),
    ),

    // FONT AWESOME ICONS- a third party library that contains numerous prebuild icons and extra customize icons
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Container(
    child: FaIcon(FontAwesomeIcons.amazon, size: 50,color: Colors.blue,),
    ),
    SizedBox(width: 10,),
    FaIcon(FontAwesomeIcons.googlePay, size: 50,)
    ],
    )
    ],
    ),
    )


    //POSITIONED Widget - to provide position to widget for example in the stack

    body: Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.greenAccent,
    child: Stack(
    children: [
    Positioned(
    bottom: 100,
    right: 100,
    top: 100,
    left: 100,

    child: Container(
    width: 100, height: 100,
    color: Colors.white,
    ),
    )
    ],
    ),
    ),

    );
  }
}

