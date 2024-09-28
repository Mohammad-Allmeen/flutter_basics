



import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/util.dart';
void main() { //the ignition point program starts from here
  runApp(const MyApp_()); // it automatically gets created as flutter is aware we are going to create the app
}

class MyApp_ extends StatelessWidget { // this is inheritance, it will inherit the parent class property
  const MyApp_({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { // as the build will be called the material app will be returned which would create the app


    return MaterialApp(
      title: 'Flutter container',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue, //top heading color, whwenever we will build a screen and we do not give color so it will automatically take this color
        textTheme: const TextTheme(
            headlineLarge: TextStyle (fontSize: 50, fontWeight: FontWeight.bold),
            headlineSmall: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)

        ),

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home page'), //this is launcher or Home screen which is by default
    );
  }
}

class MyHomePage extends StatefulWidget {  // whenever the value is changing it, it will be performed with the help of statefull widgets, and instant change is done
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
    var emailText = TextEditingController(); // variable to fetch the email entered by the user
    var passText = TextEditingController(); // variable to fetch the password entered by the user
    var ucode = TextEditingController();
    var arrNames = ['Rohit', 'Virat' , 'Dhoni', 'Sachin' , 'De villiers' , 'Steve Smith','Buttler', 'Shami', 'Dale Stenyn', 'Jimmy', 'Stuart', 'Jaheer' ];

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

      Flutter Styles and Themes

    body: Column(
    children: [
    Text('Hello', style: Theme.of(context).textTheme.headlineLarge!.copyWith(color:Colors.brown),), // copy with is used when we to add any additionall feature
    Text('Hello', style: Theme.of(context).textTheme.headlineSmall,),
    Text('Hello', style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.yellow)),
    Text('Hello', style: myTextStyle11(),), // this function is created when in app we require multiple fonts, weight text or styles to reduce the code redundency
    Text('Hello', style: myTextStyle21(),
    ),
    ],
    )

    CARD Widget - card widget is used to enhance UI, when it used the part of it gets elevated or gives shadow to give a illusion 3D appearance or view

    body: Padding(
    padding: const EdgeInsets.all(50.0),
    child: Card(
    margin: EdgeInsets.only(top: 1),
    elevation: 5, // to give more elevation or shadow
    color: Colors.lightGreen,  // to give color to the cards
    shadowColor: Colors.lightGreen, // to give color of the shadow
    child:Padding(padding: const EdgeInsets.all(8.0),
    child: Text ('hello world', style: TextStyle(fontSize: 50),)
    ),
    ),
    ),



    // ADDING Text Input widget(textfield)
    // Text input - is essential widget to take the input from the user either its username or the password
    // to get the value to store online with the of API or to store offline with the help of SQLi


    body: Center(
    child: Container(
    width: 300,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    TextField(

    controller: emailText,
    keyboardType: TextInputType.emailAddress, // keyboard type will provide the keyword for specific value to enter
    decoration: InputDecoration(
    hintText: 'Enter Email',
    focusedBorder: OutlineInputBorder(// focused is used when the user moves it cursor on the text field it create an effectborderRadius: BorderRadius.circular(11),
    borderSide: BorderSide(
    color: Colors.green,
    width: 5,
    ),
    ),
    enabledBorder: OutlineInputBorder( // it is the permanent effect of the border whether user cursor is on the text field or not
    borderRadius: BorderRadius.circular(11),
    borderSide: BorderSide(
    color: Colors.black,
    width: 2,
    )
    ),

    disabledBorder: OutlineInputBorder( // it disable the text field so that user cannot input any value
    borderRadius: BorderRadius.circular(11),
    borderSide: BorderSide(
    color: Colors.brown,
    width: 2,
    ),// focusedBorder ,
    ),
    //suffixText: "username Exist",
    suffixIcon: IconButton(onPressed:(){}, icon: Icon(Icons.remove_red_eye, color: Colors.blueAccent,)
    ),
    prefixIcon: Icon(Icons.add),
    ),
    ),
    Container(height: 15,),

    TextField(
    controller: passText,  // this will fetch the data entered by the user
    obscureText: true,
    obscuringCharacter: '*',
    decoration: InputDecoration(
    hintText: 'Enter Password',
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(
    color: Colors.blueAccent
    )
    )
    ),
    ),

    Container(height: 15,),
    TextField(
    keyboardType: TextInputType.number,
    controller: passText,
    obscureText: true,
    obscuringCharacter: '*',
    decoration: InputDecoration(
    hintText: 'Enter the code',
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(
    width: 20,
    color: Colors.lightGreen,
    )
    ),

    ),
    ),
    Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
    width: 200,
    child: ElevatedButton(onPressed: (){
    String uEmail = emailText.text.toString(); // when click the button this will print the data entered by the user in the console
    String uPass = passText.text.toString();
    String ucode = passText.text.toString();
    print('Email: $uEmail , Pass: $uPass, Code: $ucode');
    }, child: Text( 'Login'),
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.greenAccent,
    elevation: 10,

    shadowColor: Colors.green,
    textStyle: TextStyle(color: Colors.white)

    ),),
    ),
    ),
    ],
    )
    )
    ),
    );
  }
}

