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
            Neubrutalism.neuButton(
              buttonColor: Colors.teal,
            ),
            Neubrutalism.neuButton(
              buttonColor: Colors.greenAccent,
            ),
            Neubrutalism.neuButton(
              buttonColor: Colors.orangeAccent,
            ),
            Neubrutalism.neuButton(
              buttonColor: Colors.redAccent,
            ),
            Neubrutalism.neuButton(
              buttonColor: Colors.purpleAccent,
            )
          ],
        )),
      ),
    );
  }
}
