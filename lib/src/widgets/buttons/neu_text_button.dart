// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class NeuTextButton extends StatefulWidget {
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

  NeuTextButton({
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

  /// - title (optional) : A Text widget that contains the title of the button.
  ///
  final Text? title;

  /// - buttonColor (optional) : A Color that defines the color of the button.
  ///
  /// By default, it is set to neuDefault1 (black).
  final Color buttonColor;

  /// shadowColor (optional) : A Color that defines the color of the button's shadow.
  ///
  /// By default, it is set to neuShadow.
  ///
  final Color shadowColor;

  // - borderColor (optional) : A Color that defines the color of the button's border.
  //
  //By default, it is set to neuBlack.

  final Color borderColor;

  /// - onPressed (optional) : A callback function that is called when the button is pressed.
  ///
  final GestureTapCallback? onPressed;

  /// - buttonHeight (optional) : A double value that defines the height of the button.
  ///
  final double? buttonHeight;

  /// - buttonWidth (optional) : A double value that defines the width of the button.
  ///
  final double? buttonWidth;

  /// - borderWidth (optional) : A double value that defines the width of the button's border.
  ///
  /// By default, it is set to neuBorder.
  ///
  final double borderWidth;

  /// - shadowBlurRadius (optional) : A double value that defines the blur radius of the button's shadow.
  ///
  /// By default, it is set to neuShadowBlurRadius.
  final double shadowBlurRadius;

  /// - borderRadius (optional) : A BorderRadiusGeometry that defines the border radius of the button.
  ///
  /// If not specified, the button will have a circular border radius.
  final BorderRadius? borderRadius;

  /// - blurGeometry (optional) : An Offset that defines the blur offset of the button's shadow.
  ///
  /// By default, it is set to neuOffset.
  ///
  final Offset blurGeometry;

  /// - child (optional) : A Widget that will be placed inside the button.
  ///
  /// This is useful if you want to add an icon or an image to the button.
  final Widget? child;

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
