import 'package:flutter/material.dart';

class Reuseable extends StatelessWidget {
  Reuseable({this.color = const Color(0xFF1D1E33), this.cardChild});

  final Color? color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    );
  }
}
