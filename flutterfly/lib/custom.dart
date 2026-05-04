import 'package:flutter/material.dart';

Widget levelTile({
  required String tittle,
  required String imagepath,
  required int level,
  required VoidCallback onTap,
  required TextStyle style,
}) {
  return Card(
    elevation: 5,
    child: ListTile(
      onTap: onTap,
      title: Text(tittle, style: style),
      leading: Image.asset(
        imagepath,
        width: 100,
      ),
      subtitle: Row(
          children: List.generate(
        level,
        (index) => Container(
          margin: EdgeInsets.only(right: 8),
          height: 4,
          width: 20,
          color: Colors.green,
        ),
      )),
    ),
  );
}
