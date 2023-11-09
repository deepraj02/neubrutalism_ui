// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class NeuSearchBar extends StatefulWidget {
  /// A customizable neubrutalist-style Search Bar.
  ///
  /// The Search-Bar has customizable keyboardType,inputStyle,hintText,
  /// intStyle,searchBarHeight,searchBarWidth,The button's behavior is specified with an `onPressed`
  /// callback function.
  ///
  /// This button is built using Flutter's `Material` widget, and is designed to
  /// follow the Neubrutalism UI style guidelines.
  ///
  /// *[Constants]

  ///   - const neuBlack = Colors.black;
  ///   - const neuDefault1 = Colors.teal;
  ///   - const neuShadow = Color(0xFF080808);
  ///
  ///   - const neuBorder = 3.0;
  ///   - const neuShadowBlurRadius = 0.0;
  ///
  ///   - const neuOffset = Offset(4, 4);
  ///   - const neuBlurStyle = BlurStyle.solid;
  NeuSearchBar({
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
    this.leadingIcon,
    this.shadowOffset = neuOffset,
    this.borderRadius,
    this.borderColor = neuBlack,
    this.searchBarColor,
    this.shadowColor = neuShadow,
  }) : super(key: key);

  /// - keyboardType (optional): A TextInputType that defines the type of input expected from the user.
  ///
  ///  By default, it is set to null.
  final TextInputType? keyboardType;

  /// - inputStyle (optional): A TextStyle that defines the style of the text entered in the search bar.
  ///
  /// By default, it is set to null.

  final TextStyle? inputStyle;

  /// - hintText (optional): A String that displays a hint for the user in the search bar.
  ///
  /// By default, it is set to null.

  final String? hintText;

  /// - searchController (optional): A TextEditingController that controls the text being entered in the search bar.
  ///
  /// By default, it is set to null.

  final TextEditingController? searchController;

  /// - hintStyle (optional): A TextStyle that defines the style of the hint text displayed in the search bar.
  ///
  /// By default, it is set to null.

  final TextStyle? hintStyle;

  /// - searchBarHeight (optional): A double that defines the height of the search bar.
  ///
  /// By default, it is set to null.

  final double? searchBarHeight;

  /// - searchBarWidth (optional): A double that defines the width of the search bar.
  ///
  /// By default, it is set to null.

  final double? searchBarWidth;

  /// - borderWidth (optional): A double that defines the width of the border of the search bar.
  ///
  /// By default, it is set to 1.

  final double borderWidth;

  /// - shadowBlurRadius (optional): A double that defines the blur radius of the shadow of the search bar.
  ///
  /// By default, it is set to 4.

  final double shadowBlurRadius;

  /// - leadingIcon (optional): An Icon widget that displays an icon in the search bar.
  ///
  /// By default, it is set to null.

  final Icon? leadingIcon;

  /// - shadowOffset (optional): An Offset that defines the offset of the shadow of the search bar.
  ///
  /// By default, it is set to (0, 0).

  final Offset shadowOffset;

  /// - borderRadius (optional): A BorderRadiusGeometry that defines the border radius of the search bar.
  ///
  /// By default, it is set to null.

  final BorderRadiusGeometry? borderRadius;

  /// - borderColor (optional): A Color that defines the color of the border of the search bar.
  ///
  /// By default, it is set to neuBlack.

  final Color borderColor;

  /// - searchBarColor (optional): A Color that defines the color of the search bar.
  ///
  /// By default, it is set to null.

  final Color? searchBarColor;

  /// - shadowColor (optional): A Color that defines the color of the shadow of the search bar.
  ///
  /// By default, it is set to neuShadow.

  final Color shadowColor;

  @override
  State<NeuSearchBar> createState() => _NeuSearchBarState();
}

class _NeuSearchBarState extends State<NeuSearchBar> {
  @override
  Widget build(BuildContext context) {
    return NeuContainer(
      height: widget.searchBarHeight,
      width: widget.searchBarWidth??300,
      borderRadius: widget.borderRadius??BorderRadius.circular(15),
      color: widget.searchBarColor??const Color.fromARGB(255, 214, 140, 164),
      borderColor: widget.borderColor,
      borderWidth: widget.borderWidth,
      shadowColor: widget.shadowColor,
      shadowBlurRadius: widget.shadowBlurRadius,
      offset: widget.shadowOffset,
      child: Row(
        children: [
          SizedBox(width: 6),
          widget.leadingIcon ?? Icon(Icons.search),
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
