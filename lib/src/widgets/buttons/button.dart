import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String label;
  final Color? buttonColor;

  const Button(
    this.label,
    this.buttonColor,
  );

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 360,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: Color.fromARGB(255, 226, 59, 59),
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 255, 214, 214),
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
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(204, 217, 255, 0),
              ),
            ),
            SizedBox(width: 16),
            Text(
              widget.label,
              style: TextStyle(
                color: Color(0xcc1f1f1f),
                fontSize: 16,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
