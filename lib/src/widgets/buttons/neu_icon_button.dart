// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../res/package_constants.dart';

class NeuIconButton extends StatefulWidget {
  /// A customizable neubrutalist-style text button.
  ///
  /// The button has a text label, customizable background color, border color,
  /// and drop shadow. The button's shape can also be customized with a rounded
  /// border radius. The button's behavior is specified with an `onPressed`
  /// callback function.
  ///
  /// This button is built using Flutter's `Material` widget, and is designed to
  /// follow the Neubrutalism UI style guidelines.
  ///
  /// *[Constants]

  ///   - const neuBlack = Colors.black;
  ///   - const neuDefault1 = Colors.teal;
  ///   - const neuShadow = Color(0xFF080808);
  ///
  ///   - const neuBorder = 3.0;
  ///   - const neuShadowBlurRadius = 0.0;
  ///
  ///   - const neuOffset = Offset(4, 4);
  ///   - const neuBlurStyle = BlurStyle.solid;

  NeuIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.buttonColor,
    this.shadowColor,
    this.borderColor,
    this.paddingData,
    this.borderRadius,
    this.blurGeometry,
    this.buttonHeight,
    this.shadowBlurRadius,
    this.buttonWidth,
    this.borderWidth,
  }) : super(key: key);

  /// - icon (required) : A Icon Widget to help you add icons.
  ///

  final Icon icon;

  /// - onPressed (required) : A callback function that is called when the button is pressed.
  ///
  final GestureTapCallback onPressed;

  /// - buttonColor (optional) : A Color that defines the color of the button.
  ///
  /// By default, it is set to neuDefault1 (black).
  final Color? buttonColor;

  /// shadowColor (optional) : A Color that defines the color of the button's shadow.
  ///
  /// By default, it is set to neuShadow.
  ///
  final Color? shadowColor;

  // - borderColor (optional) : A Color that defines the color of the button's border.
  //
  //By default, it is set to neuBlack.

  final Color? borderColor;

  /// - paddingData (optional) : An EdgeInsetsGeometry that defines the padding for the contents of the card.
  final EdgeInsets? paddingData;

  /// - borderRadius (optional) : A BorderRadiusGeometry that defines the border radius of the button.
  ///
  /// If not specified, the button will have a circular border radius.
  final BorderRadius? borderRadius;

  /// - blurGeometry : An Offset that defines the amount and direction of the blur applied to the shadow of the card.
  ///
  final Offset? blurGeometry;

  /// - buttonHeight (optional) : A double value that defines the height of the button.
  ///
  final double? buttonHeight;

  /// - buttonWidth (optional) : A double value that defines the width of the button.
  ///
  final double? buttonWidth;

  /// - shadowBlurRadius (optional) : A double that defines the radius of the blur applied to the shadow of the card.
  ///
  /// By default, it is set to neuShadowBlurRadius.
  ///
  final double? shadowBlurRadius;

  /// - borderWidth (optional) : A double value that defines the width of the button's border.
  ///
  /// By default, it is set to neuBorder.
  ///
  final double? borderWidth;

  @override
  State<NeuIconButton> createState() => NeuIconButtonState();
}

class NeuIconButtonState extends State<NeuIconButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: widget.buttonWidth ?? 50,
        height: widget.buttonHeight ?? 50,
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius,
          border: Border.all(
            color: widget.borderColor ?? neuBlack,
            width: widget.borderWidth ?? neuBorder,
          ),
          boxShadow: [
            BoxShadow(
              color: widget.shadowColor ?? neuShadow,
              blurRadius: widget.shadowBlurRadius ?? neuShadowBlurRadius,
              offset: widget.blurGeometry ?? neuOffset,
            ),
          ],
          color: widget.buttonColor ?? neuDefault1,
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
