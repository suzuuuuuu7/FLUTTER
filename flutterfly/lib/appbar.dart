import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Welcome to Flutter'),

      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,

        leading: Padding(
          padding: EdgeInsets.only(bottom: 25),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print("Menu clicked");
            },
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(bottom: 25.0),
            child: IconButton(
              onPressed: () {
                print("Setting opened");
              },
              icon: Icon(Icons.settings),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: IconButton(
              onPressed: () {
                print("chekc notification");
              },
              icon: Icon(Icons.notification_add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: IconButton(
              onPressed: () {
                print("Find more option.");
              },
              icon: Icon(Icons.more_vert),
            ),
          ),
        ],
        backgroundColor: Colors.redAccent,
        title: Padding(
          padding: EdgeInsets.only(bottom: 25, right: 50),
          child: Text(
            "FlutteRflY",
            style: TextStyle(color: Colors.black, fontSize: 27),
          ),
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
