import 'package:flutter/material.dart';

class NeuSearchBar extends StatefulWidget {
  final TextInputType? keyboardType;

  final TextStyle? inputStyle;
  final String hintText;
  final TextEditingController searchController;
  final TextStyle? hintStyle;
  final double searchBarHeight;
  final double searchBarWidth;
  final double borderWidth;
  final double shadowBlurRadius;
  final Icon searchBarIcon;
  final Offset shadowOffset;
  final BorderRadiusGeometry? borderRadius;
  final Color borderColor;
  final Color searchBarColor;
  final Color shadowColor;

  const NeuSearchBar(
    this.hintText,
    this.searchBarHeight,
    this.searchBarWidth,
    this.borderWidth,
    this.shadowBlurRadius,
    this.searchBarIcon,
    this.shadowOffset,
    this.borderRadius,
    this.borderColor,
    this.searchBarColor,
    this.shadowColor,
    this.hintStyle,
    this.searchController,
    this.keyboardType,
    this.inputStyle,
  );

  @override
  State<NeuSearchBar> createState() => _NeuSearchBarState();
}

class _NeuSearchBarState extends State<NeuSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.searchBarHeight,
      width: widget.searchBarWidth,
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius,
        color: widget.searchBarColor,
        border: Border.all(
          color: widget.borderColor,
          width: widget.borderWidth,
        ),
        boxShadow: [
          BoxShadow(
              color: widget.shadowColor,
              blurRadius: widget.shadowBlurRadius,
              offset: widget.shadowOffset),
        ],
      ),
      child: Row(
        children: [
          SizedBox(width: 6),
          Icon(Icons.search),
          SizedBox(width: 13),
          Expanded(
            child: TextField(
              controller: widget.searchController,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: widget.hintStyle,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              style: widget.inputStyle,
              keyboardType: widget.keyboardType,
            ),
          ),
        ],
      ),
    );
  }
}
