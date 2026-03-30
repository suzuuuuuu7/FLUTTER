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
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 4,
              ),
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/images/nice.webp"),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
