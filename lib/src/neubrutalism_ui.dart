import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

import 'widgets/containers/neu_card.dart';

export 'widgets/buttons/neu_text_button.dart';

mixin Neubrutalism {
  //% Adding the Button Class.
  static NeuTextButton neuTextButton({
    Text title = const Text("Hello"),
    Color buttonColor = const Color(0xFF378106),
    Color? shadowColor = const Color(0xff1f1f1f),
    Color? borderColor = const Color(0xff1f1f1f),
    required double buttonHeight,
    required double buttonWidth,
    required double borderWidth,
    required GestureTapCallback onPressed,
  }) {
    return NeuTextButton(
      title,
      buttonColor,
      buttonHeight,
      buttonWidth,
      shadowColor,
      borderColor,
      borderWidth,
      onPressed,
    );
  }

  static NeuCard neuImageCard({
    required Image cardImage,
    Color? cardColor = const Color.fromARGB(255, 55, 129, 6),
    Color? shadowColor = const Color(0xff1f1f1f),
    Color? borderColor = const Color(0xff1f1f1f),
    required double cardHeight,
    required double cardWidth,
    required EdgeInsets paddingData,
  }) {
    return NeuCard(
      cardColor,
      cardHeight,
      cardWidth,
      shadowColor,
      borderColor,
      cardImage,
      paddingData,
    );
  }
}
