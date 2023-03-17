import 'package:flutter/material.dart';

class NeuCard extends StatefulWidget {
  final Image cardImage;

  final Color? cardColor;
  final Color? shadowColor;
  final Color? borderColor;

  final EdgeInsets paddingData;

  final double cardHeight;
  final double cardWidth;

  const NeuCard(
    this.cardColor,
    this.cardHeight,
    this.cardWidth,
    this.shadowColor,
    this.borderColor,
    this.cardImage,
    this.paddingData,
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
          color: widget.borderColor!,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: widget.shadowColor!,
            blurRadius: 0,
            offset: Offset(4, 4),
          ),
        ],
        color: widget.cardColor,
      ),
      padding: widget.paddingData,
      child: SizedBox(
        child: widget.cardImage,
      ),
    );
  }
}
