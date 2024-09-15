import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onTap, required this.buttonTilte, this.color});

  final VoidCallback? onTap;
  final String buttonTilte;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTilte,
            style: kLargeButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        // color: kBottomContainerColor,
        color: onTap == null ? Colors.grey : (color ?? kBottomContainerColor),
        height: kBottomContainerHeight,
      ),
    );
  }
}
