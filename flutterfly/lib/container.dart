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
      appBar: AppBar(title: Text(widget.title)),
      body: Row(
        children: [
          Container(
            height: 200,
            width: 90,
            child: Image.asset("assets/images/img.jpg"),
          ),
          Container(
            height: 200,
            width: 90,
            child: Image.asset("assets/images/flutter.jpg"),
          ),
          Container(
            height: 100,
            width: 80,
            child: Image.asset("assets/images/coffeexstudy.webp"),
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.pink,
            child: ElevatedButton(
              child: Text("Click me"),
              onPressed: () {
                print("Text Button Clicked");
              },
            ),
          ),
        ],
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
