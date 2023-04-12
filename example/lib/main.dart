import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  final TextEditingController _editingController = TextEditingController();
  Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.center,
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
                  cardColor: Colors.teal,
                  cardHeight: 300,
                  cardWidth: 300,
                  paddingData: const EdgeInsets.all(10),
                  cardBorderWidth: 3,
                  shadowBlur: 10,
                  shadowBlurRadius: 1,
                  blurGeometry: const Offset(5, 4)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Neubrutalism.neuIconButton(
                    icon: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                    buttonColor: const Color.fromARGB(213, 235, 227, 13),
                    buttonHeight: 70,
                    buttonWidth: 70,
                    borderWidth: 3,
                    onPressed: () {},
                    borderRadius: BorderRadius.circular(5),
                    paddingData: const EdgeInsets.all(1),
                  ),
                  Neubrutalism.neuIconButton(
                    icon: const Icon(
                      Icons.remove,
                    ),
                    buttonColor: const Color.fromARGB(212, 13, 235, 224),
                    buttonHeight: 70,
                    buttonWidth: 70,
                    borderWidth: 3,
                    onPressed: () {},
                    borderRadius: BorderRadius.circular(5),
                    paddingData: const EdgeInsets.all(5),
                  ),
                ],
              ),
              Neubrutalism.neuSearchBar(
                hintText: "Search",
                searchBarHeight: 70,
                searchBarIcon: const Icon(Icons.search),
                searchBarWidth: 300,
                borderRadius: BorderRadius.circular(15),
                searchController: _editingController,
              ),
              Neubrutalism.neuTextButton(
                  buttonHeight: 50,
                  buttonWidth: 100,
                  borderWidth: 2,
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
