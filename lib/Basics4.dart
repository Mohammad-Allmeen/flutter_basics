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

      // intl package is used when we want get date and time in particular format, like for month 5 it should display May

      body: Center(
        child: Container(
          width: 500,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current Time: ${time.hour} :${time.minute}: ${time.second}', style: TextStyle(fontSize: 25),// time.day, time.month, time.weekday, time.year, time.hour, time.min
              ),
              Text('date format by package is${DateFormat('jms').format(time)}', style: TextStyle(fontSize: 25, color: Colors.lightGreen),),
              Text('another format ${DateFormat('yMMMMEEEEd').format(time)}', style: TextStyle(fontSize: 25, color: Colors.lightGreen),), // many formats are there for printing day date and time, eg- 'Hms'- hour, min, sec, yMMMMd - year, month, date  QQQQ- like January is in the first quarter
              // by this procedure time is now included by the packages
              ElevatedButton(onPressed: (){
                setState(() { // set state means when the UI is refreshed and give the refreshed current time value

                });
              }, child: Text('Get Current time') )
            ],
          ),
        ),
      )

      // DATE AND TIME PICKER - this will allow the user to input date and time by opening the dialog box of date and time
      // for eg. when we fill a form and we have to enter the exam date and time slot

      body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Select Date',
          style: TextStyle(fontSize: 25),
        ),
        ElevatedButton(
          onPressed: () async {
            DateTime? datePicked = await showDatePicker(
              //DateTime variable is used and it is await and async so that it does not take time to select the date
              // ? is used suppose when the dialog box open and user does not select any date he touched outside the dialog box
              // hence the date will be null this is the reason of using ? to not have date and time value as null
              context: context,
              initialDate: DateTime.now(), // when dialog box will open initial date will be default the current date
              firstDate: DateTime(2021), // firstDate -this is the past limit date the user can select
              lastDate: DateTime(2025),); // lastDate - the future date till when the user can select
            if (datePicked != null) {
              print('Date Selected: ${datePicked.day}- ${datePicked.month}-${datePicked.year}');
            }
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          child: Text('Show date', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white)
          ),
        ),
        OutlinedButton(
          onPressed: () async {
            TimeOfDay? pickTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dial);
            if (pickTime != null) {
              print('The selected time is ${pickTime.hour} hr: ${pickTime.minute} min');
            }
          },
          style: OutlinedButton.styleFrom(elevation: 20, shadowColor: Colors.green,
            backgroundColor: Colors.green,
          ),
          child: Text(
            "Show Time",
            style: TextStyle(
                fontFamily: 'Font1',
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        )
      ],
    ),
    ),

    );
  }
}
