import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circle avatar.."),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 200,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/boy.jpg"),
          ),
        ),
      ),
    );
  }
}
 