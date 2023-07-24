import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/src/widgets/widgets.dart';

class NeuBottomNav extends StatelessWidget {
  const NeuBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 28),
        child: NeuContainer(
          borderColor: Colors.black,
          color: const Color.fromARGB(255, 254, 210, 225),
          shadowColor: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: 80,
          blurGeometry: Offset(-1, -4),
          borderRadius: BorderRadius.circular(17),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.black,
                    width: 100,
                    height: 100,
                    child: Icon(
                      Icons.home,
                      size: 40,
                      color: Color.fromARGB(255, 190, 169, 224),
                    ),
                  ),
                ),
                Icon(
                  Icons.account_circle_sharp,
                  size: 40,
                ),
                Icon(
                  Icons.search,
                  size: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
