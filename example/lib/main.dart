import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  //final TextEditingController _editingController = TextEditingController();
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestNeu(),
    );
  }
}

class TestNeu extends StatelessWidget {
  const TestNeu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 190, 169, 224),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: NeuTextButton(
                borderRadius: BorderRadius.circular(30),
                buttonColor: const Color.fromARGB(255, 208, 238, 235),
                borderColor: Colors.black,
                shadowColor: Colors.black,
                buttonHeight: 50,
                buttonWidth: MediaQuery.of(context).size.width * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Hello",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: NeuContainer(
                //blurGeometry: const Offset(-3, -6),
                height: 160,
                width: 250,
                borderRadius: BorderRadius.circular(30),
                child: Column(
                  children: const [
                    Icon(
                      Icons.accessible_outlined,
                      size: 50,
                    ),
                    Text("about this Icon, \nthis is a woke icon")
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
