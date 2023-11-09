// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import '_button.dart';

class NeuTextButton extends NeuButton {
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
    required enableAnimation,
    required this.text,
    int animationDuration = 100,
    Color borderColor = neuBlack,
    BorderRadius? borderRadius,
    double borderWidth = neuBorder,
    Color buttonColor = neuDefault1,
    double buttonHeight = 50,
    double buttonWidth = 100,
    Offset offset = neuOffset,
    GestureTapCallback? onPressed,
    double shadowBlurRadius = neuShadowBlurRadius,
    Color shadowColor = neuShadow,
  }) : super(
          animationDuration: animationDuration,
          borderColor: borderColor,
          borderRadius: borderRadius,
          borderWidth: borderWidth,
          buttonColor: buttonColor,
          buttonHeight: buttonHeight,
          buttonWidth: buttonWidth,
          child: text,
          enableAnimation: enableAnimation,
          key: key,
          offset: offset,
          onPressed: onPressed,
          shadowBlurRadius: shadowBlurRadius,
          shadowColor: shadowColor,
        );

  ///
  /// This Property helps to insert a Text Widget and Customize it according to your need
  final Text text;
}
