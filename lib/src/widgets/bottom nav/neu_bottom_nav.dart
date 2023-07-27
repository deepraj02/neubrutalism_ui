// import 'package:flutter/material.dart';

// import 'package:neubrutalism_ui/src/widgets/widgets.dart';

// class NeuBottomNav extends StatefulWidget {
//   final bool isFloating;
//   final bool autoHide;
//   final double? floatingHeight;
//   final double? floatingWidth;
//   final double? stackedHeight;
//   final double? stackedWidth;

//   const NeuBottomNav({
//     Key? key,
//     this.isFloating = true,
//     this.autoHide = false,
//     this.floatingHeight,
//     this.floatingWidth,
//     this.stackedHeight,
//     this.stackedWidth,
//   }) : super(key: key);

//   @override
//   State<NeuBottomNav> createState() => _NeuBottomNavState();
// }

// class _NeuBottomNavState extends State<NeuBottomNav> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: widget.isFloating
//           ? EdgeInsets.only(left: 14, right: 14, bottom: 25)
//           : EdgeInsets.zero,
//       child: NeuContainer(
//         height: widget.isFloating
//             ? MediaQuery.sizeOf(context).height / 11
//             : MediaQuery.sizeOf(context).height / 9,
//         borderColor:
//             widget.isFloating ? Colors.black : const Color.fromARGB(0, 0, 0, 0),
//         color: const Color.fromARGB(255, 254, 210, 225),
//         shadowColor:
//             widget.isFloating ? Colors.black : Color.fromARGB(255, 0, 0, 0),
//         offset: Offset(-1, -4),
//         borderRadius: BorderRadius.circular(40),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: Container(
//                   color: Colors.black,
//                   width: 100,
//                   height: 100,
//                   child: Icon(
//                     Icons.home,
//                     size: 40,
//                     color: Color.fromARGB(255, 190, 169, 224),
//                   ),
//                 ),
//               ),
//               Icon(
//                 Icons.account_circle_sharp,
//                 size: 40,
//               ),
//               Icon(
//                 Icons.search,
//                 size: 40,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'package:neubrutalism_ui/src/widgets/widgets.dart';

class NeuBottomNav extends StatefulWidget {
  final List<IconData> icons;
  final Function(int) onIconTap;
  final bool isFloating;
  final bool autoHide;
  final double? floatingHeight;
  final double? floatingWidth;
  final double? stackedHeight;
  final double? stackedWidth;
  final Color initialIconColor;

  const NeuBottomNav({
    Key? key,
    required this.icons,
    required this.onIconTap,
    this.isFloating = true,
    this.autoHide = false,
    this.floatingHeight,
    this.floatingWidth,
    this.stackedHeight,
    this.stackedWidth,
    required this.initialIconColor,
  }) : super(key: key);

  @override
  State<NeuBottomNav> createState() => _NeuBottomNavState();
}

class _NeuBottomNavState extends State<NeuBottomNav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.isFloating
          ? EdgeInsets.only(left: 14, right: 14, bottom: 25)
          : EdgeInsets.zero,
      child: NeuContainer(
        height: widget.isFloating
            ? MediaQuery.sizeOf(context).height / 11
            : MediaQuery.sizeOf(context).height / 9,
        borderColor:
            widget.isFloating ? Colors.black : const Color.fromARGB(0, 0, 0, 0),
        color: const Color.fromARGB(255, 254, 210, 225),
        shadowColor:
            widget.isFloating ? Colors.black : Color.fromARGB(255, 0, 0, 0),
        offset: Offset(-1, -4),
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < widget.icons.length; i++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = i;
                    });
                    widget.onIconTap(i);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          color: _currentIndex == i
                              ? Colors.black
                              : Colors.transparent,
                          width: 100,
                          height: 100,
                          child: Icon(
                            widget.icons[i],
                            size: 40,
                            color: _currentIndex == i
                                ? Color.fromARGB(255, 190, 169, 224)
                                : widget.initialIconColor,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                            width: _currentIndex == i ? 0 : 100,
                            height: _currentIndex == i ? 0 : 100,
                            color: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
