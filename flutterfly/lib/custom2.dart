import 'package:flutter/material.dart';

class round extends StatelessWidget {
  final Icon? icon;
  final String btnname;
  final VoidCallback? callback;
  final TextStyle? style;
  final Color? bgcolor;
  round(
      {this.icon,
      required this.btnname,
      this.callback,
      this.style,
      this.bgcolor = Colors.red});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != null
          ? Row(
              children: [
                icon!,
                Text(
                  btnname,
                  style: TextStyle(),
                )
              ],
            )
          : Text(
              btnname,
              style: TextStyle(),
            ),
      style: ElevatedButton.styleFrom(
          shadowColor: bgcolor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
