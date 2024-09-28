import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/rounded_btn.dart';
import 'package:intl/intl.dart';
import 'package:flutter_basics/ui_helper/util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  //the ignition point program starts from here
  runApp(
      const MyApp_()); // it calls MyApp function and it automatically gets created as flutter is aware we are going to create the app
}

class MyApp_ extends StatelessWidget {
  // this is inheritance, it will inherit the parent class property
  const MyApp_({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { //build function where we define app
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

class MyHomePage extends StatefulWidget { // stateful widget changes is made during run time
  // whenever the value is changing it, it will be performed with the help of statefull widgets, and instant change is done
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState(); //when stateful is used create state is used
}

class _MyHomePageState extends State<MyHomePage> {
  var cont1 = TextEditingController();
  var cont2 = TextEditingController();
  String result="";
  int _counter = 0;
  var add=0;
  var a=0;
  var b=0;
  var count = 0;
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
    var arrNames = ['Rohit', 'Virat', 'Dhoni', 'Sachin', 'De villiers', 'Steve Smith', 'Buttler', 'Shami', 'Dale Stenyn', 'Jimmy', 'Stuart', 'Jaheer'
    ];
    var arrColors = [Colors.green, Colors.white, Colors.blueAccent, Colors.red, Colors.yellow, Colors.brown, Colors.purple, Colors.cyanAccent,
    ];

    var time = DateTime.now(); //this shows the current data and time, it is static function means we have to just give reference
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


        Functionatlity if UI is controlled by UX, means how the UI perform is based on UX
    StateFul Widget - to modify or change during runtime and spontaneously reflecting it on the screen, based on input, tap, button etc the UI is reflected and chnaged
    Set state Function calling plays crucial role In the stateful widget and in the changes of UI
    when the set state value is updated the build function of stateful widget will will called and rebuild then the UI will be rechanged and reflected

    init state - it is the initialization state, it will be only called once in the start, in rebuild it will on be called ever again

    dispose - dispose is called when the state is destroyed the

    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Counter: $add", style: TextStyle(fontSize: 40),),
    ElevatedButton(onPressed: (){
    setState(() {
    add= a+b;
    print(add);
    a++;
    b++;
    });
    },
    child:Text("Increment Count", style: TextStyle(color: Colors.white),),
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue
    )
    )
    ],
    ),
    ),

    body: Container(
    color: Colors.green.shade100,
    child: Center(
    child: Padding(
    padding: const EdgeInsets.all(25.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    TextField(
    keyboardType: TextInputType.number,
    controller: cont1 ,
    decoration: InputDecoration(
    hintText: "Enter first number",
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.blue,
    width: 10,
    )
    )
    ),
    ),
    Container(
    height: 20,
    ),
    TextField(
    keyboardType: TextInputType.number,
    controller: cont2,
    decoration: InputDecoration(
    hintText: "Enter 2nd Number",
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.black,
    width: 50,
    )
    )
    ),
    ),

    Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(

    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    ElevatedButton(onPressed: (){
    var num1= int.parse(cont1.text.toString());//the value we get is text which is editable format but cannot be directly converted into Integar so we convert into String and the integar
    var num2 = int.parse(cont2.text.toString());
    var sum = num1+num2;

    setState(() {
    result= "the sum of $num1 and $num2 is $sum";
    });
    }, child: Text('Add')),

    ElevatedButton(onPressed: (){
    var num1 = int.parse(cont1.text.toString());
    var num2 = int.parse(cont2.text.toString());
    var sub = num1-num2;
    setState(() {
    result = "the subtraction of $num1 and $num2 is $sub";
    });
    }, child: Text('Subtract')),

    ElevatedButton(onPressed: (){
    var num1 = int.parse(cont1.text.toString());
    var num2= int.parse(cont2.text.toString());
    var mul= num1*num2;
    setState((){
    result= "Result is $mul";
    });
    }, child: Text('Multiply')),

    ElevatedButton(onPressed: (){
    var num1 = int.parse(cont1.text.toString());
    var num2= int.parse(cont2.text.toString());
    var div= num1/num2;
    setState((){
    result= "Result is ${div.toStringAsFixed(2)}";
    });
    }, child: Text('Divide')),

    ],
    ),
    ),
    ),
    Padding(
    padding: EdgeInsets.all(20),
    child:Text(result, style: TextStyle(fontSize: 30, color: Colors.white),)
    ,)
    ],
    ),
    )
    ),
    ),
    );
  }

}


