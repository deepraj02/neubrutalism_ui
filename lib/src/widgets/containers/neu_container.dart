import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class NeuContainer extends StatefulWidget {
  final Offset blurGeometry;
  final Color? color;
  final Color shadowColor;
  final Color borderColor;

  final double? height;
  final double? width;
  final double borderWidth;
  final double shadowBlurRadius;

  final BlurStyle shadowBlurStyle;
  final Widget? child;

  final BorderRadiusGeometry? borderRadius;

  const NeuContainer({
    Key? key,
    this.blurGeometry = neuOffset,
    this.color = neuDefault1,
    this.shadowColor = neuShadow,
    this.borderColor = neuBlack,
    this.height,
    this.width,
    this.borderWidth = neuBorder,
    this.shadowBlurRadius = neuShadowBlurRadius,
    this.shadowBlurStyle = neuBlurStyle,
    this.child,
    this.borderRadius,
  }) : super(key: key);

  @override
  State<NeuContainer> createState() => NeuContainerState();
}

class NeuContainerState extends State<NeuContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
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
            blurStyle: widget.shadowBlurStyle,
          ),
        ],
        color: widget.color,
      ),
      child: widget.child,
      clipBehavior: Clip.antiAlias,
    );
  }
}
