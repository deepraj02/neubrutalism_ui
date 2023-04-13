import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

export 'widgets/buttons/neu_text_button.dart';
export 'widgets/buttons/neu_icon_button.dart';
export 'widgets/containers/neu_card.dart';
export 'widgets/containers/neu_search_bar.dart';

class Neubrutalism {
  /// [@Deepraj02]
  ///
  /// Creates a Neubrutalist Design Text Button widget with the given properties.
  ///
  /// This widget displays a button with customizable color, shadow, and border.
  ///
  ///
  /// [Required parameters]:
  ///
  /// * title: The text to display on the button.
  /// * buttonHeight: The height of the button.
  /// * buttonWidth: The width of the button.
  /// * borderWidth: The width of the button's border.
  /// * onPressed: A callback function that is called when the button is pressed.
  ///
  /// [Optional parameters]:
  ///
  /// * buttonColor: The background color of the button.
  /// * shadowColor: The color of the shadow around the button.
  /// * borderColor: The color of the button's border.

  static NeuTextButton neuTextButton({
    Text title = const Text("Hello"),
    Color buttonColor = const Color(0xFF378106),
    Color? shadowColor = const Color(0xff1f1f1f),
    Color? borderColor = const Color(0xff1f1f1f),
    required double buttonHeight,
    required double buttonWidth,
    required double borderWidth,
    required GestureTapCallback onPressed,
  }) {
    return NeuTextButton(
      title,
      buttonColor,
      buttonHeight,
      buttonWidth,
      shadowColor,
      borderColor,
      borderWidth,
      onPressed,
    );
  }

  /// [@Deepraj02]
  ///
  /// Creates a Neubrutalist Design Image Card widget with the given properties.
  ///
  /// This widget displays an image with a customizable border and shadow.
  ///
  ///
  /// [Required parameters]:
  ///
  /// * `cardImage`: The image to display on the card.
  /// * `paddingData`: The padding around the image.
  /// * `cardHeight`: The height of the card.
  /// * `cardWidth`: The width of the card.
  /// * `cardBorderWidth`: The width of the card's border.
  /// * `shadowBlurRadius`: The radius of the shadow around the card.
  ///
  /// [Optional parameters]:
  ///
  /// * `blurGeometry`: The position of the shadow relative to the card.
  /// * `cardColor`: The background color of the card.
  /// * `shadowColor`: The color of the shadow around the card.
  /// * `cardBorderColor`: The color of the card's border.
  /// * `imageBorderColor`: The color of the border around the image.
  /// * `imageBorderWidth`: The width of the border around the image.
  /// * `shadowBlur`: The intensity of the shadow around the card.
  ///
  static NeuCard neuImageCard({
    required Image cardImage,
    required EdgeInsets paddingData,
    required double cardHeight,
    required double cardWidth,
    required double cardBorderWidth,
    required double shadowBlurRadius,
    Offset blurGeometry = const Offset(4, 4),
    Color cardColor = const Color.fromARGB(255, 55, 129, 6),
    Color? shadowColor = const Color(0xff1f1f1f),
    Color? cardBorderColor = const Color(0xff1f1f1f),
    Color imageBorderColor = const Color(0xff1f1f1f),
    double imageBorderWidth = 0,
    double shadowBlur = 0,
  }) {
    return NeuCard(
        cardColor,
        cardHeight,
        cardWidth,
        shadowColor,
        cardBorderColor,
        cardImage,
        paddingData,
        imageBorderColor,
        cardBorderWidth,
        shadowBlur,
        blurGeometry,
        shadowBlurRadius,
        imageBorderWidth);
  }

  /// Creates a Neubrutalist Design Icon Button widget with the given properties.
  ///
  /// Returns a `NeuIconButton` widget.
  ///
  /// This widget displays an icon with a customizable border, shadow, and background color.
  ///
  /// [Required parameters]:
  ///
  /// * `icon`: The icon to display on the button.
  /// * `buttonHeight`: The height of the button.
  /// * `buttonWidth`: The width of the button.
  /// * `borderWidth`: The width of the button's border.
  /// * `onPressed`: The function to call when the button is pressed.
  /// * `borderRadius`: The radius of the button's corners.
  /// * `buttonColor`: The background color of the button.
  ///
  /// [Optional parameters]:
  ///
  /// * `paddingData`: The padding around the button.
  /// * `shadowBlurRadius`: The radius of the shadow around the button.
  /// * `shadowGeometry`: The position of the shadow relative to the button.
  /// * `shadowColor`: The color of the shadow around the button.
  /// * `borderColor`: The color of the button's border.
  ///

  static NeuIconButton neuIconButton({
    required Icon icon,
    required double buttonHeight,
    required double buttonWidth,
    required double borderWidth,
    required GestureTapCallback onPressed,
    required BorderRadius borderRadius,
    required Color buttonColor,
    EdgeInsets paddingData = const EdgeInsets.all(0),
    double shadowBlurRadius = 0,
    Offset shadowGeometry = const Offset(4, 4),
    Color? shadowColor = const Color(0xff1f1f1f),
    Color? borderColor = const Color(0xff1f1f1f),
  }) =>
      NeuIconButton(
          icon,
          buttonColor,
          buttonHeight,
          buttonWidth,
          shadowColor,
          borderColor,
          borderWidth,
          onPressed,
          borderRadius,
          paddingData,
          shadowGeometry,
          shadowBlurRadius);

  /// Creates a NeuSearchBar widget with the given properties.
  ///
  /// This widget displays a search bar with a customizable border, shadow, and text input.
  ///
  /// [Required parameters]:
  ///
  /// * `hintText`: The hint text to display in the search bar.
  /// * `searchBarHeight`: The height of the search bar.
  /// * `searchBarWidth`: The width of the search bar.
  /// * `searchBarIcon`: The icon to display in the search bar.
  /// * `borderRadius`: The border radius of the search bar.
  /// * `searchController`: The controller for the search bar's text input.
  ///
  /// [Optional parameters]:
  ///
  /// * `hintStyle`: The style for the hint text in the search bar.
  /// * `borderWidth`: The width of the search bar's border.
  /// * `shadowBlurRadius`: The radius of the shadow around the search bar.
  /// * `shadowOffset`: The position of the shadow relative to the search bar.
  /// * `borderColor`: The color of the search bar's border.
  /// * `searchBarColor`: The background color of the search bar.
  /// * `shadowColor`: The color of the shadow around the search bar.
  /// * `keyboardType`: The keyboard type for the search bar's text input.
  /// * `textInputAction`: The text input action for the search bar's text input.
  /// * `inputStyle`: The style for the text input in the search bar.
  ///
  /// Returns a NeuSearchBar widget.

  static NeuSearchBar neuSearchBar({
    required String hintText,
    required double searchBarHeight,
    required double searchBarWidth,
    required Icon searchBarIcon,
    required BorderRadiusGeometry borderRadius,
    required TextEditingController searchController,
    TextStyle? hintStyle = const TextStyle(fontSize: 20),
    double borderWidth = 3,
    double shadowBlurRadius = 0,
    Offset shadowOffset = const Offset(4, 4),
    Color borderColor = Colors.black87,
    Color searchBarColor = const Color.fromARGB(255, 239, 218, 186),
    Color shadowColor = Colors.black87,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    TextStyle? inputStyle = const TextStyle(fontSize: 20),
  }) {
    return NeuSearchBar(
        hintText,
        searchBarHeight,
        searchBarWidth,
        borderWidth,
        shadowBlurRadius,
        searchBarIcon,
        shadowOffset,
        borderRadius,
        borderColor,
        searchBarColor,
        shadowColor,
        hintStyle,
        searchController,
        keyboardType,
        inputStyle);
  }
}
