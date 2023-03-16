import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Neubrutalism.button(
              buttonColor: Colors.teal,
            ),
            Neubrutalism.button(
              buttonColor: Colors.greenAccent,
            ),
            Neubrutalism.button(
              buttonColor: Colors.orangeAccent,
            ),
            Neubrutalism.button(
              buttonColor: Colors.redAccent,
            ),
            Neubrutalism.button(
              buttonColor: Colors.purpleAccent,
            )
          ],
        )),
      ),
    );
  }
}
