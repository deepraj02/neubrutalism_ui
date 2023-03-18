import 'package:flutter/material.dart';

class NeuCard extends StatefulWidget {
  final Image cardImage;

  final Offset shadowGeometry;
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

  final double shadowBlur;

  const NeuCard(
    this.cardColor,
    this.cardHeight,
    this.cardWidth,
    this.shadowColor,
    this.cardBorderColor,
    this.cardImage,
    this.paddingData,
    this.imageBorderColor,
    this.cardBorderWidth,
    this.shadowBlur,
    this.shadowGeometry,
    this.shadowBlurRadius,
    this.imageBorderWidth,
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
            offset: widget.shadowGeometry,
          ),
        ],
        color: widget.cardColor,
      ),
      padding: widget.paddingData,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
          color: widget.imageBorderColor,
          width: widget.cardBorderWidth,
        )),
        child: widget.cardImage,
      ),
    );
  }
}
