import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String label;
  final Color? buttonColor;

  const Button(
    this.label,
    this.buttonColor,
  );

  @override
  State<Button> createState() => ButtonState();
}

class ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 360,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: Color(0xff1f1f1f),
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff1f1f1f),
              blurRadius: 0,
              offset: Offset(4, 4),
            ),
          ],
          color: widget.buttonColor,
        ),
        padding: const EdgeInsets.only(
          left: 16,
          right: 154,
          top: 17,
          bottom: 18,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                //SizedBox(width: 30),
                Text(
                  widget.label,
                ),
                Text(
                  widget.label,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
