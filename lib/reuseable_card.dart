import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

class Reuseable extends StatelessWidget {
  Reuseable({this.color = activeCardColor, this.cardChild});

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
