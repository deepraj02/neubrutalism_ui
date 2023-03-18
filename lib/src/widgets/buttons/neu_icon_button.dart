import 'package:flutter/material.dart';

class NeuIconButton extends StatefulWidget {
  final Icon icon;

  final Color? buttonColor;
  final Color? shadowColor;
  final Color? borderColor;

  final GestureTapCallback onPressed;

  final EdgeInsetsGeometry paddingData;

  final BorderRadius borderRadius;
  final Offset shadowGeometry;

  final double buttonHeight;
  final double shadowBlurRadius;
  final double buttonWidth;
  final double borderWidth;

  const NeuIconButton(
    this.icon,
    this.buttonColor,
    this.buttonHeight,
    this.buttonWidth,
    this.shadowColor,
    this.borderColor,
    this.borderWidth,
    this.onPressed,
    this.borderRadius,
    this.paddingData,
    this.shadowGeometry,
    this.shadowBlurRadius,
  );

  @override
  State<NeuIconButton> createState() => NeuIconButtonState();
}

class NeuIconButtonState extends State<NeuIconButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: widget.buttonWidth,
        height: widget.buttonHeight,
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius,
          border: Border.all(
            color: widget.borderColor!,
            width: widget.borderWidth,
          ),
          boxShadow: [
            BoxShadow(
              color: widget.shadowColor!,
              blurRadius: widget.shadowBlurRadius,
              offset: widget.shadowGeometry,
            ),
          ],
          color: widget.buttonColor,
        ),
        padding: widget.paddingData,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.icon,
          ],
        ),
      ),
    );
  }
}
