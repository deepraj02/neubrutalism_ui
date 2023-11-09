// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

import '_button.dart';

class NeuIconButton extends NeuButton {
  /// A customizable neubrutalist-style icon button.
  ///
  /// The button has an icon, customizable background color, border color,
  /// and drop shadow. The button's shape can also be customized with a rounded
  /// border radius. The button's behavior is specified with an `onPressed`
  /// callback function.
  ///
  /// This button is built using Flutter's `Material` widget, and is designed to
  /// follow the Neubrutalism UI style guidelines.
  ///
  /// *[Constants]

  ///   - const neuBlack = Colors.black; /   - const neuDefault1 = Colors.teal;
  ///   - const neuShadow = Color(0xFF080808);
  ///
  ///   - const neuBorder = 3.0;
  ///   - const neuShadowBlurRadius = 0.0;
  ///
  ///   - const neuOffset = Offset(4, 4);
  ///   - const neuBlurStyle = BlurStyle.solid;

  NeuIconButton({
    Key? key,
    required enableAnimation,
    required this.icon,
    animationDuration = 100,
    borderColor = neuBlack,
    borderRadius,
    borderWidth = neuBorder,
    buttonColor = neuDefault1,
    buttonHeight = 50,
    buttonWidth = 100,
    offset = neuOffset,
    onPressed,
    shadowBlurRadius = neuShadowBlurRadius,
    shadowColor = neuShadow,
  }) : super(
          animationDuration: animationDuration,
          borderColor: borderColor,
          borderRadius: borderRadius,
          borderWidth: borderWidth,
          buttonColor: buttonColor,
          buttonHeight: buttonHeight,
          buttonWidth: buttonWidth,
          child: icon,
          enableAnimation: enableAnimation,
          key: key,
          offset: offset,
          onPressed: onPressed,
          shadowBlurRadius: shadowBlurRadius,
          shadowColor: shadowColor,
        );

  /// - icon (required) : A Icon Widget to help you add icons.
  ///
  final Icon icon;
}
