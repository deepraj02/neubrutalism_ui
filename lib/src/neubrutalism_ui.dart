// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

export 'widgets/buttons/button.dart';

// Adding Namespace `Neubrutalism` for calling other widgets

mixin Neubrutalism {
  //% Adding the Button Class.
  static Button button({
    String label = 'Button',
    Color buttonColor = Colors.white,
  }) {
    return Button(label, buttonColor);
  }
}
