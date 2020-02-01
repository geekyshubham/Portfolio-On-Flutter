import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HELLO DSC',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(title: 'my APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var widget2 = widget;
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget2.title,),
        backgroundColor: Colors.white,
        
        
      ),
      drawer: Drawer(child: Container(

        //child:Image.asset("assets/download.png",)
      ),),//DRAWER
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
      
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //mainAxisAlignment: MainAxisAlignment.center,
         
          children: <Widget>[
            CircleAvatar(
  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Android_logo_2019.png/899px-Android_logo_2019.png"),radius: 120,
),Padding(padding: EdgeInsets.all(0),),
            Text(
              'Android Developer',style: TextStyle(fontSize: 20,color: Colors.green,),
            ),
            
            Text(
              'i am learning flutter',style: TextStyle(fontSize: 15,color: Colors.grey,),
              
            ),
Container(
  decoration: myBoxDecoration(),
 margin: EdgeInsets.only(top:30,bottom: 50),
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        
        Column(
          children: <Widget>[
            Text(
              'POSTS',
              style: TextStyle(
                color: Colors.green,
                
                letterSpacing: 0.5,
                fontSize: 20,
                
              ),
            ),
            SizedBox(
              height:10
            ),
            Text(
              '100',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
                fontSize: 15,
                
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              'FOLLOWERS',
              style: TextStyle(
                color: Colors.green,
                
                letterSpacing: 0.5,
                fontSize: 20,
                
              ),
            ), SizedBox(
              height:10
            ),
             Text(
              '100',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
                fontSize: 15,
                
              ),),
          ],
        ),
        Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'FOLLOWING',
                  style: TextStyle(
                    color: Colors.green,
                    
                    
                    letterSpacing: 0.5,
                    fontSize: 20,
                  ),
                ), SizedBox(
              height:10
            ),
                 Text(
              '100',
              style: TextStyle(
                 fontWeight: FontWeight.bold,
                color: Colors.grey,
                
                letterSpacing: 0.5,
                fontSize: 15,
                
              ),),
              ],
            ),
          ],
        ),

        
      ],
      
    ),
  ),
      Row(
        children: <Widget>[
          Icon(
            Icons.beenhere, 
            color: Colors.green,
            size: 120,
            ),
            Text("Follow Me",
              style: TextStyle(
                 fontWeight: FontWeight.bold,
                color: Colors.green,
                
                letterSpacing: 0.5,
                fontSize: 55,),)
        ],
      )  
              
            ],
          
  
  
  
  
          ),
          
      
        ),
      
  
      );
      
    }
  }
  
 BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    
    border: Border.all(),
  );
}