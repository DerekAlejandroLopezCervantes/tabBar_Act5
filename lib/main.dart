import 'package:flutter/material.dart';
//import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestana TabBar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
} //Mi aplicacion

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //Myhomepage con statefulWidget

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            // indicatorColor: Color(0xff020092),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Color(0xae3abefb)),
            tabs: [
              Tab(icon: Icon(Icons.supervised_user_circle)),
              Tab(icon: Icon(Icons.music_note_outlined)),
              Tab(icon: Icon(Icons.gamepad)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
          centerTitle: true,
          title: Text('Sounds'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.supervised_user_circle, size: 350),
            Icon(Icons.music_note_outlined, size: 350),
            Icon(Icons.gamepad, size: 350),
            Icon(Icons.settings, size: 350),
          ],
        ),
      ),
    );
  } //Widget BuildContext
} //MyhomepageState
