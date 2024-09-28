import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_basics/ui_helper/util.dart';

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
        primarySwatch: Colors
            .blue, //top heading color, whwenever we will build a screen and we do not give color so it will automatically take this color
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.lightGreen,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      body: Column(
        children: [
          Container(
            height: 200,
            child: GridView.count(crossAxisCount: 4,
              mainAxisSpacing: 11,//
              crossAxisSpacing: 11, // through main and cross axis or through padding we can give spacing

              children: [
                Container(color: arrColors[0]),
                Container(color: arrColors[1]),
                Container(color: arrColors[2]),
                Container(color: arrColors[3]),
                Container(color: arrColors[4]),
                Container(color: arrColors[5]),
                Container(color: arrColors[6]),
                Container(color: arrColors[7]),
              ],//children
            ),
          ),
          Container(
            height: 100,
          ),
          Container(
            height: 200,
            child: GridView.extent(maxCrossAxisExtent: 50, // this will divide 50 width among the grids and arranges it on the screen
              mainAxisSpacing: 11,
              crossAxisSpacing: 11,
              children: [
                Container(color: arrColors[0]),
                Container(color: arrColors[1]),
                Container(color: arrColors[2]),
                Container(color: arrColors[3]),
                Container(color: arrColors[4]),
                Container(color: arrColors[5]),
                Container(color: arrColors[6]),
                Container(color: arrColors[7]),
              ],
            ),
          )
        ],
      ),

      // Grid item will built the grid dynamically with the use of array likely be used when we fetch data dynamically from internet

      body: GridView.builder(gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10 ),
        itemBuilder: (context, index)
        {
          return Container (color:arrColors[index]);
        }, itemCount: arrColors.length,

      ),

      // Call back function

      body: ElevatedButton(onPressed:
      callBack,
          child:
          Text("Click me") ),
      backgroundColor: Colors.cyanAccent,

      // CUSTOM widget - if one widget is used multiple time with same specifications then we use custom widget to remove the redundancy

      body: Container(
        child: Column(
          children: [CatItems(), Middlepart(), Subpart(), Bottompart()],
        ),
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.greenAccent,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding
            (
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Middlepart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Text('Name'),
                subtitle: Text("Mob No."),
                trailing: Icon(Icons.delete),
                subtitleTextStyle: TextStyle(fontWeight: FontWeight.w500, fontStyle: FontStyle.italic, color: Colors.black),
              ),
            )),
        color: Colors.white,
      ),
    );
  }
}

class Subpart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.green,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.white,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Bottompart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.black,
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
