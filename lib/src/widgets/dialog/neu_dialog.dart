import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class NeuDialog extends Dialog {
  /// A [NeuDialog] box (Neubrutalism Dialog) with different customizable options.
  ///
  /// The [Dialog] has a customizable background color, border color,
  /// and drop shadow. The Dialog's shape can also be customized with a rounded
  /// border radius.
  ///
  /// [NeuDialog] also inherits following attributes from Dialog Widget class for further customization:
  ///   1. insetAnimationDuration,
  ///   2. insetAnimationCurve,
  ///   3. insetPadding,
  ///   4. clipBehavior,
  ///   5. alignment,
  ///
  /// This [Dialog] Widget is built using Flutter's `Material` widget, and is designed to
  /// follow the [Neubrutalism] UI style guidelines.
  ///

  /// Default [NeuDialog]
  const NeuDialog({
    super.key,
    required this.child,
    this.backgroundColor = Colors.white,
    this.borderColor = neuBlack,
    this.borderWidth = neuBorder,
    this.borderRadius,
    this.padding = const EdgeInsets.all(8.0),
    this.shadowBlurRadius = neuShadowBlurRadius,
    this.offset = neuOffset,
    this.shadowBlurStyle = neuBlurStyle,
    this.shadowColor = neuShadow,
    this.fullscreen = false,
    super.insetAnimationDuration,
    super.insetAnimationCurve,
    super.insetPadding,
    super.clipBehavior,
    super.alignment,
  });

  /// Fullscreen [NeuDialog]
  const NeuDialog.fullscreen({
    super.key,
    required this.child,
    this.fullscreen = true,
    this.backgroundColor = Colors.white,
    this.borderColor = neuBlack,
    this.borderWidth = neuBorder,
    this.borderRadius,
    this.padding = const EdgeInsets.all(8.0),
    this.shadowBlurRadius = neuShadowBlurRadius,
    this.offset = neuOffset,
    this.shadowBlurStyle = neuBlurStyle,
    this.shadowColor = neuShadow,
    super.insetAnimationDuration,
    super.insetAnimationCurve,
    super.insetPadding,
    super.clipBehavior,
    super.alignment,
  });

  /// - [child] (required): A widget that is displayed inside the [NeuDialog].
  final Widget child;

  /// - [fullscreen] (optional): A bool to allow fullscreen mode in [NeuDialog].
  ///
  /// By default, it is set to [false].
  final bool fullscreen;

  /// - [padding] (optional): A EdgeInsetsGeometry that add inner padding to the [NeuDialog].
  ///
  /// By default, it is set to const EdgeInsets.all(8.0).
  final EdgeInsets padding;

  /// - [backgroundColor] (optional): A Color that defines the background color of the [NeuDialog].
  ///
  /// By default, it is set to [white].
  final Color? backgroundColor;

  /// - [borderColor] (optional): A Color that defines the color of the border of the [NeuDialog].
  ///
  /// By default, it is set to [neuBlack].
  final Color borderColor;

  /// - [shadowColor] (optional): A Color that defines the color of the shadow of the [NeuDialog].
  ///
  /// By default, it is set to [neuShadow].
  final Color shadowColor;

  /// - [borderWidth] (optional): A double that defines the width of the border of the [NeuDialog].
  ///
  /// By default, it is set to [neuBorder].
  final double borderWidth;

  /// - [shadowBlurRadius] (optional): A double that defines the blur radius of the shadow of the [NeuDialog].
  ///
  /// By default, it is set to [neuShadowBlurRadius].
  final double shadowBlurRadius;

  /// - [shadowBlurStyle] (optional): A BlurStyle that defines the style of the blur of the shadow of the [NeuDialog].
  ///
  /// By default, it is set to [neuBlurStyle].
  final BlurStyle shadowBlurStyle;

  /// - [offset] (optional): An Offset that defines the position of the shadow of the [NeuDialog].
  ///
  /// By default, it is set to [neuOffset].
  final Offset offset;

  /// - [borderRadius] (optional): A BorderRadiusGeometry that defines the radius of the corners of the [NeuDialog].
  ///
  /// By default, it is set to null.
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    /// Main [NeuContainer]
    final widget = NeuContainer(
      child: child,
      padding: padding,
      color: this.backgroundColor,
      offset: offset,
      shadowColor: shadowColor,
      shadowBlurRadius: shadowBlurRadius,
      borderRadius: borderRadius,
      borderColor: borderColor,
      borderWidth: borderWidth,
      shadowBlurStyle: shadowBlurStyle,
    );

    /// if fullscreen is enabled
    /// return => Dialog.fullscreen
    if (fullscreen) {
      return Dialog.fullscreen(
        insetAnimationDuration: insetAnimationDuration,
        insetAnimationCurve: insetAnimationCurve,
        child: widget,
      );
    }

    /// Default Dialog
    return Dialog(
      alignment: alignment,
      clipBehavior: clipBehavior,
      insetAnimationCurve: insetAnimationCurve,
      insetAnimationDuration: insetAnimationDuration,
      insetPadding: insetPadding,
      child: widget,
    );
  }
}
