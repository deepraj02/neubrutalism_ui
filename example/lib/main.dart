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
      // home: TestNeu(),
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
                buttonColor: const Color.fromARGB(255, 208, 238, 235),
                borderColor: Colors.black,
                shadowColor: Colors.black,
                buttonHeight: 50,
                buttonWidth: MediaQuery.of(context).size.width * 0.5,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
              padding: const EdgeInsets.all(15.0),
              child: NeuContainer(
                height: 160,
                width: 250,
                child: const Column(
                  children: [
                    Text(
                      "This is NeuContainer",
                      style: TextStyle(fontSize: 23),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.accessible_outlined,
                          size: 50,
                        ),
                        Icon(
                          Icons.accessible_outlined,
                          size: 50,
                        ),
                        Icon(
                          Icons.accessible_outlined,
                          size: 50,
                        ),
                        Icon(
                          Icons.accessible_outlined,
                          size: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            NeuSearchBar(
              borderRadius: BorderRadius.circular(18),
              searchBarIcon: const Icon(Icons.search),
              searchBarColor: const Color.fromARGB(255, 144, 186, 214),
              searchBarHeight: 60,
              searchBarWidth: MediaQuery.of(context).size.width * 0.9,
              hintStyle: const TextStyle(fontSize: 20),
              inputStyle: const TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
            ),
            NeuIconButton(
              icon: const Icon(Icons.abc),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NeuBottomNav(),
    );
  }
}
