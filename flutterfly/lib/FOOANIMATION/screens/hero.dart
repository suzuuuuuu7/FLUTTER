import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class hero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
            child: Hero(
          tag: "Hero animation",
          child: Image.asset("assets/images/waoo.webp"),
        )),
      ),
    );
  }
}
