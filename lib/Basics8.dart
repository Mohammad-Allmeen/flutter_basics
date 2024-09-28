import 'package:flutter/material.dart';
import 'package:flutter_basics/SplashScreen.dart';

import 'package:flutter_basics/widgets/rounded_btn.dart';
import 'package:intl/intl.dart';
import 'package:flutter_basics/ui_helper/util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'IntroPage.dart';
import 'SplashScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter container',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
            headlineLarge: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            headlineSmall: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Splashscreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var cont1 = TextEditingController();
  var cont2 = TextEditingController();
  var nameController = TextEditingController();

  RangeValues values = RangeValues(0, 100);

  String result="";
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var emailText = TextEditingController();
    var passText = TextEditingController();
    var ucode = TextEditingController();

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString()); //taken in builder because the values will keep on changing

    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(widget.title),
      ),


      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RangeSlider(
                  values: values,
                  labels: labels,
                  divisions: 20,
                  min: 0,
                  max: 100,
                  activeColor: Colors.green,
                  inactiveColor: Colors.green.shade100,
                  onChanged: (newValue){
                    values= newValue;
                    print('${newValue.start}, ${newValue.end}');
                    setState(() {

                    });

                  }),
              Text("Welcome", style: TextStyle(fontSize: 25)),
              SizedBox(height: 11),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Enter the value",
                    fillColor: Colors.blueAccent,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.black
                        )
                    )
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IntroPage(nameController.text.toString()),
                    ),
                  );
                },
                child: Text("Next"),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
//Splash screen show the starting of the app icon then enters the app
//Splash screen is then removed from the stack that is when the app is once opened the the user presses back button the app closes instead of the splash scree


