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
      home: Splashscreen(),
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

  String result = "";
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

    RangeLabels labels = RangeLabels(
        values.start.toString(),
        values.end
            .toString()); //taken in builder because the values will keep on changing

    //list of databse(dummy data)
    // var arrData = [
    //   'Rohit',
    //   'Virat',
    //   'Dhoni',
    //   'Sachin',
    //   'De villiers',
    //   'Steve Smith',
    //   'Buttler',
    //   'Shami',
    //   'Dale Stenyn',
    //   'Jimmy',
    //   'Stuart',
    //   'Jaheer'
    // ];


    var arrData = [ // creating map to fetch different types of value
        {
      'Name': 'Rohit Sharma',
    'Domain': 'Cricketer',
    'Number' : '45'
  },
  {
    'Name' : 'Lionel Messi',
    'Domain' : 'Greatest Footballer',
    'Number' : '10'
  },
      {
        'Name' : 'Virat Kohli',
        'Domain' : 'Cricketer',
        'Number' : '18'
      },
      {
        'Name' : 'Cristiano',
        'Domain' : 'Footballer',
        'Number' : '7'
      },
      {
        'Name' : 'MS Dhoni',
        'Domain' : 'Captain',
        'Number' : '07'
      },
      {
        'Name' : 'Neymar',
        'Domain' : ' Footballer',
        'Number' : '11'
      },
      {
        'Name' : 'Dale Steyn',
        'Domain' : 'Cricketer',
        'Number' : '18'
      },
      {
        'Name' : 'Shoeb Akhtar',
        'Domain' : 'Cricketer',
        'Number' : '05'
      },

];
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(widget.title),
      ),

      // CLIP RRECT- it is applied to clip any material like images graphs

      //      body: Center(
      //        child: ClipRRect(
      //          borderRadius: BorderRadius.circular(50),
      // //         borderRadius: BorderRadius.all(Radius.elliptical(20, 70)),
      // //         borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomRight: Radius.circular(100)),
      //          // child: Container(
      //          //   color: Colors.green,
      //          //   width: 200,
      //          //   height: 200,
      //          // ),
      //
      //          child: Image.asset("assets/images/boy.jpg", width: 400, height: 300,fit: BoxFit.fill,),
      //        ),
      //      ),

      body: Container(
        child: ListView(
            children:
                //design is same with different value then we map the list with different data
            arrData.map((value) {
              //   return Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       decoration: BoxDecoration(
              //           color: Colors.blue, borderRadius: BorderRadius.circular(21)
              //       ),
              //       child: Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Center(child: Text(value)),
              //       ),
              //     ),
              //   );
              // }

              //Having different value from the Map
              return ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(value['Name'].toString()),
                subtitle: Text(value['Domain'].toString()),
                trailing: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.green,
                    child: Text(value['Number'].toString())
                ),
              );
            }).toList()),
      ),
    );
  }
}
