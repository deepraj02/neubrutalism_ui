import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Neubrutalism.neuTextButton(
              buttonHeight: 50,
              buttonWidth: 100,
              borderWidth: 2,
              onPressed: () {}),
          MaterialButton(
            onPressed: () {},
            child: const Text("Hek"),
          )
        ],
      ),
    );
  }
}
