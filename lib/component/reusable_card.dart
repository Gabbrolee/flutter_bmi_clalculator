import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard( {required this.color, required this.cardChild, required this.onTap });

  final Color color;
  final Widget cardChild;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        height: 200,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color
        ),
      ),
    );
  }
}
