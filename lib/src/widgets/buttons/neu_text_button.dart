import 'package:flutter/material.dart';

class NeuTextButton extends StatefulWidget {
  /// Creates a neuTextButton(Widget) based on [Stateful Widget]
  /// Creates a Material Design button.
  ///
  /// To create a custom Material button consider using [TextButton],
  /// [ElevatedButton], or [OutlinedButton].
  ///
  /// The [autofocus] and [clipBehavior] arguments must not be null.
  /// Additionally,  [elevation], [hoverElevation], [focusElevation],
  /// [highlightElevation], and [disabledElevation] must be non-negative, if
  /// specified.
  final Text title;
  /// Adds a title to the [neuTextButton] of type [Text].

  final Color? buttonColor;
  /// *Adds the button  Color [inside of the Button]
  
  
  final Color? shadowColor;
  /// Specifies the Color of the background Shadow
  
  
  final Color? borderColor;
  /// Specifies the Color of the Button Border
  
  
  final GestureTapCallback onPressed;
  /// Basically the onPressed Fuunction

  final double buttonHeight;
  /// * Sets the Buutton height property [type double]
  ///


  final double buttonWidth;
  ///
  ///
  ///
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
            FittedBox(child: widget.title),
          ],
        ),
      ),
    );
  }
}
