



import 'package:flutter/material.dart';
void main() { //the ignition point program starts from here
  runApp(const FlutterApp()); // it automatically gets created as flutter is aware we are going to create the app
}

class FlutterApp extends StatelessWidget { // this is inheritance, it will inherit the parent class property
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { // as the build will be called the material app will be returned which would create the app


    return MaterialApp(
      title: 'Flutter container',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

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
    var arrNames = ['Rohit', 'Virat' , 'Dhoni', 'Sachin' , 'De villiers' , 'Steve Smith','Buttler', 'Shami', 'Dale Stenyn', 'Jimmy', 'Stuart', 'Jaheer' ];

    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),

        body: Center(
          child : Container(

            width:300, height: 300, //300*300 box is created
            color: Colors.cyanAccent, //colorfor the box

            child: Center(child: Text('Hello Developer',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                backgroundColor: Colors.black,
              ),
            ),
            ),
          ),
          //container is a widget and method or a constructor which has many type of container that has many methods and objects
        )

        //BUTTONS-
        // 1. Text Button
        body: Center(
    child: TextButton(
    onPressed: () {
      print('Text button tapped');
    },
    onLongPress: ()
    {
    print("LongPressed");
    },
    child: Container(
    child:Text('Click Here')



    ),
    ),
    ),

    // 2. Elevated Buttons

    body: Center(
    child: ElevatedButton(onPressed: () {
    print ('Elevated button clicked');
    },

    child: const Text('Elevated Button'),
    style: ElevatedButton.styleFrom(
    elevation: 20.0,
    backgroundColor: Colors.green,
    textStyle:  TextStyle(color: Colors.white),
    )
    ),
    )


    // 3. Outlined Button
    // when outline button is clicked it create ripple effect, means we will get  to know we have pressed the button
    body: Center(
    child: OutlinedButton(onPressed: (){
    print('Outlined button presssed');
    }, child: const Text( 'Outlined Button') ),
    ),


    // HOW TO ADD IMAGE IN THE FLUTTER APP
    // 1. create a folder(assets) and then another file(images)withing which we will store all the images used in the application
    //2. From the storage paste the images in the file
    //3. then from pubspec.yaml file we call the get function
    body: Center(
    child: Container(
    width: 100,
    height: 100,
    child: Image.asset('assets/images/images.png')
    )
    )



    //INKWELL widget -The press/ripple feature is available in the button ,
    //but if we need to implement it on the image and other widgets then there come the use of inkwell.

    body: Center(
    child: InkWell(
    onTap: (){
    print('Tapped on container');
    },
    onDoubleTap: (){
    print('double tapped on container');
    },
    onLongPress: (){
    print('long press on container');
    },
    child: Container(  //as we apply inkwell on container hence we need to wrap the container with inkwell
    width: 200,height: 200,
    color: Colors.amber, //now if we wan to apply ontap feature on container then inkwell is used
    child: Center(
    child: InkWell(
    onDoubleTap: (){
    print('double tapped on Text Widget');
    },
    child: Text("Click here",
    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
    ))),
    ),
    ),
    )


    //SCROLL View Widget

    body: Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
    child: Column(
    children: [
    Container(
    margin: EdgeInsets.only(bottom: 10),
    height: 200,
    width: 200,
    color: Colors.lightGreen,
    child:Center(child: Text("Hello", style: TextStyle(fontSize: 20,color: Colors.white),))
    ),
    SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: [
    Container(
    margin: EdgeInsets.only(right: 10),
    height: 200,
    width: 200,
    color: Colors.yellow,
    ),
    Container(
    margin: EdgeInsets.only(right: 10),
    height: 200,
    width: 200,
    color: Colors.pinkAccent,
    ),
    Container(
    margin: EdgeInsets.only(right: 10),
    height: 200,
    width: 200,
    color: Colors.purple,
    ),
    ],
    ),
    ),
    Container(
    margin: EdgeInsets.only(bottom: 10),
    height: 200,
    width: 200,
    color: Colors.blueAccent,
    ),
    Container(
    margin: EdgeInsets.only(bottom: 10),
    height: 200,
    width: 200,
    color: Colors.red,
    )
    ],
    ),
    ),
    )




    //LIST VIEW


    LIST View builder class

    body: ListView.builder(itemBuilder: (context, index) {
    return Text(arrNames[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),);
    },
    itemCount: arrNames.length,
    reverse: false,
    itemExtent: 100,
    scrollDirection: Axis.horizontal,
    ),

    //LIST view seperated

    body: ListView.separated(itemBuilder: (context, index) {
    return Text(arrNames[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),);
    },
    itemCount: arrNames.length,
    separatorBuilder: (BuildContext context, int index) {
    return Divider(height:100, thickness: 5,);
    },
    ),

    //LIST VIEW SEPARATED EXAMPLE

    body: ListView.separated(
    itemBuilder: (context, position)
    {
    return Card(
    child: Padding(
    padding: const EdgeInsets.all(15.0),
    child: Text('List Item $position',)
    )
    );
    },
    separatorBuilder: (context, position){
    return Card(
    color: Colors.grey,
    child: Padding(
    padding: const EdgeInsets.all(5.0),
    child: Text(
    'Separator $position' , style: TextStyle(color: Colors.white),
    ),
    ),
    );
    },
    itemCount: 20,
    ),

    body: ListView.separated(itemBuilder: (context, index)
    {
    return Row(
    children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(arrNames[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500) ,),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(arrNames[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500) ,),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(arrNames[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500) ,),
    ),
    ],
    );
    },
    itemCount:arrNames.length,
    separatorBuilder: (context, index)
    {
    return Divider(height:100, thickness:5);
    },
    )

    //LIStTile

    body: ListView.separated(itemBuilder: (context, index)
    {
    return ListTile(
    leading: Text('${index+1}'),
    title: Text(arrNames[index]),
    subtitle: Text('Number'),
    trailing: Icon(Icons.add),

    );
    },
    itemCount: arrNames.length,
    separatorBuilder: (context, index){
    return Divider(height: 40, thickness: 5,);
    },
    )

    body: Center(
    child: Column(
    children: [
    Padding(padding: const EdgeInsets.all(50)),
    Container(
    child: CircleAvatar(
    backgroundImage: AssetImage('assets/images/boy.jpg'),
    backgroundColor: Colors.green,
    radius: 100,
    // minRadius: 50, min and max radius attribute is used to customize the image dynamically which is fetched from that server
    //maxRadius: 400,
    ),
    ),
    Text('Name', style: TextStyle(color: Colors.black),)
    ],
    )
    ),

    // HOW TO ADD CUSTOM or our personal FONT IN THE APP
    //create a particular folder for fonts as same we have created for image
    // in pubspec.yaml add the customfont
    body: Center(
    child: Text('hello world', style: TextStyle(fontFamily: 'Font1', fontSize: 50,color: Colors.green),)),

    );
  }
}

