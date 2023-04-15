// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class NeuSearchBar extends StatefulWidget {
  const NeuSearchBar({
    Key? key,
    this.keyboardType,
    this.inputStyle,
    this.hintText,
    this.searchController,
    this.hintStyle,
    this.searchBarHeight,
    this.searchBarWidth,
    this.borderWidth = neuBorder,
    this.shadowBlurRadius = neuShadowBlurRadius,
    this.searchBarIcon,
    this.shadowOffset = neuOffset,
    this.borderRadius,
    this.borderColor = neuBlack,
    this.searchBarColor,
    this.shadowColor = neuShadow,
  }) : super(key: key);

  final TextInputType? keyboardType;

  final TextStyle? inputStyle;
  final String? hintText;
  final TextEditingController? searchController;
  final TextStyle? hintStyle;
  final double? searchBarHeight;
  final double? searchBarWidth;
  final double borderWidth;
  final double shadowBlurRadius;
  final Icon? searchBarIcon;
  final Offset shadowOffset;
  final BorderRadiusGeometry? borderRadius;
  final Color borderColor;
  final Color? searchBarColor;
  final Color shadowColor;

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
          widget.searchBarIcon ?? Icon(Icons.search),
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
