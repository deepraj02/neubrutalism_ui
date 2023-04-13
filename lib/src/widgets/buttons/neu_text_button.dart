import 'package:flutter/material.dart';

class NeuTextButton extends StatefulWidget {
  final Text title;
  final Color? buttonColor;
  final Color? shadowColor;

  final Color? borderColor;

  final GestureTapCallback onPressed;
  final double buttonHeight;
  final double buttonWidth;
  final double borderWidth;

  const NeuTextButton(
    this.title,
    this.buttonColor,
    this.buttonHeight,
    this.buttonWidth,
    this.shadowColor,
    this.borderColor,
    this.borderWidth,
    this.onPressed,
  );

  @override
  State<NeuTextButton> createState() => NeuTextButtonState();
}

class NeuTextButtonState extends State<NeuTextButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: widget.buttonWidth,
        height: widget.buttonHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: widget.borderColor!,
            width: widget.borderWidth,
          ),
          boxShadow: [
            BoxShadow(
              color: widget.shadowColor!,
              blurRadius: 0,
              offset: Offset(4, 4),
            ),
          ],
          color: widget.buttonColor,
        ),
        padding: const EdgeInsets.only(
          left: 16,
          right: 15,
          top: 17,
          bottom: 18,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              child: FittedBox(child: widget.title),
            ),
          ],
        ),
      ),
    );
  }
}
