import 'package:flutter/material.dart';

final _lighttheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
        bodyMedium: TextStyle(
      color: Colors.black,
    )));
final _darktheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
        bodyMedium: TextStyle(
      color: Colors.white,
    )));

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _switchValue ? _lighttheme : _darktheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: _switchValue ? Colors.white : Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("visible"),
              Switch(
                activeThumbColor: Colors.black87,
                inactiveThumbColor: Colors.red,
                activeTrackColor: Colors.amber,
                value: _switchValue,
                onChanged: (newV) {
                  setState(() {
                    _switchValue = newV;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
