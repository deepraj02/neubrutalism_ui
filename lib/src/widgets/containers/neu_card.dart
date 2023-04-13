// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NeuCard extends StatefulWidget {
  // final Image cardImage;

  /// WhatsUp Nigga

  final Offset blurGeometry;
  final Color cardColor;
  final Color? shadowColor;
  final Color? cardBorderColor;
  final Color imageBorderColor;

  final EdgeInsets paddingData;

  final double cardHeight;
  final double cardWidth;
  final double cardBorderWidth;
  final double shadowBlurRadius;
  final double imageBorderWidth;

  final BlurStyle shadowBlurStyle;
  final Widget? child;
  

  const NeuCard(
    //this.cardImage,
    this.blurGeometry,
    this.cardColor,
    this.shadowColor,
    this.cardBorderColor,
    this.imageBorderColor,
    this.paddingData,
    this.cardHeight,
    this.cardWidth,
    this.cardBorderWidth,
    this.shadowBlurRadius,
    this.imageBorderWidth,
    this.shadowBlurStyle,
    this.child,
  );

  @override
  State<NeuCard> createState() => NeuCardState();
}

class NeuCardState extends State<NeuCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: widget.cardBorderColor!,
            width: widget.cardBorderWidth,
          ),
          boxShadow: [
            BoxShadow(
              color: widget.shadowColor!,
              blurRadius: widget.shadowBlurRadius,
              offset: widget.blurGeometry,
              blurStyle: widget.shadowBlurStyle,
            ),
          ],
          color: widget.cardColor,
        ),
        padding: widget.paddingData,
        child: widget.child);
  }
}
