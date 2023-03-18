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
            Neubrutalism.neuTextButton(
              buttonColor: Colors.teal,
              buttonHeight: 60,
              borderWidth: 2,
              onPressed: () {
                debugPrint("object");
              },
              buttonWidth: 300,
            ),
            Neubrutalism.neuImageCard(
              cardImage: Image.network(
                "https://images.unsplash.com/photo-1674574124345-02c525664b65?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                fit: BoxFit.cover,
              ),
              cardHeight: 300,
              cardWidth: 300,
              paddingData: const EdgeInsets.all(8),
            )
          ],
        )),
      ),
    );
  }
}
