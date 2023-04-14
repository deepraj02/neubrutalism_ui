// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class NeuTextButton extends StatefulWidget {
  final Text? title;
  final Color buttonColor;
  final Color shadowColor;

  /// Adds Color to the Border of the button
  final Color borderColor;

  final GestureTapCallback? onPressed;
  final double? buttonHeight;
  final double? buttonWidth;
  final double borderWidth;
  final double shadowBlurRadius;
  final BorderRadiusGeometry? borderRadius;
  final Offset blurGeometry;
  final Widget? child;

  const NeuTextButton({
    Key? key,
    this.title,
    this.buttonColor = neuDefault1,
    this.shadowColor = neuShadow,
    this.borderColor = neuBlack,
    this.onPressed,
    this.buttonHeight,
    this.buttonWidth,
    this.borderWidth = neuBorder,
    this.shadowBlurRadius = neuShadowBlurRadius,
    this.borderRadius,
    this.blurGeometry = neuOffset,
    this.child,
  }) : super(key: key);

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
          borderRadius: widget.borderRadius,
          border: Border.all(
            color: widget.borderColor,
            width: widget.borderWidth,
          ),
          boxShadow: [
            BoxShadow(
              color: widget.shadowColor,
              blurRadius: widget.shadowBlurRadius,
              offset: widget.blurGeometry,
            ),
          ],
          color: widget.buttonColor,
        ),
        child: widget.child,
        clipBehavior: Clip.antiAlias,
      ),
    );
  }
}
