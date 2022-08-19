import 'package:flutter/material.dart';

import '../constant.dart';


class BottomButton extends StatelessWidget {
  BottomButton({required this.title, required this.onTap});
  final String title;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            title,
            style: kLargeBottomTextStyle,
          ),
        ),
      ),
    );
  }
}
