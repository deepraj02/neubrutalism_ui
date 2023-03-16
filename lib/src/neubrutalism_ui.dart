

import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

export 'widgets/buttons/button.dart';


mixin Neubrutalism {
  //% Adding the Button Class.
  static Button neuButton({
    String label = 'Button',
    Color buttonColor = Colors.white,
  }) {
    return Button(label, buttonColor);
  }
}
