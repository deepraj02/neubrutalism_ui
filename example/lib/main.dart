import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

void main() {
  runApp(const NeuBrutalism());
}

class NeuBrutalism extends StatelessWidget {
  const NeuBrutalism({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //v debugShowMaterialGrid: true,
      home: ScreenWidget(),
    );
  }
}

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      body: SafeArea(
          minimum: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi, Deepraj",
                    style: GoogleFonts.anton(
                      textStyle: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  NeuContainer(
                      color: Colors.blueAccent,
                      height: 50,
                      width: 50,
                      borderRadius: BorderRadius.circular(12),
                      offset: const Offset(3, 3),
                      child: const Icon(
                        Icons.supervised_user_circle_outlined,
                        size: 40,
                      )),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Become a Better Dev Today",
                  style: GoogleFonts.robotoCondensed(
                      textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NeuSearchBar(
                    searchController: controller,
                    keyboardType: TextInputType.name,
                    searchBarColor: Colors.white,
                    hintText: "What are you looking for",
                    borderRadius: BorderRadius.circular(12),
                  ),
                  NeuIconButton(
                      buttonColor: const Color.fromARGB(255, 234, 203, 214),
                      borderRadius: BorderRadius.circular(10),
                      icon: const Icon(Icons.sort),
                      enableAnimation: false)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Course in Progress",
                  style: GoogleFonts.robotoCondensed(
                      textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              NeuContainer(
                color: Colors.white,
                height: 150,
                width: double.maxFinite,
                borderRadius: BorderRadius.circular(12),
                borderWidth: 2,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: NeuTextButton(
                          borderRadius: BorderRadius.circular(12),
                          buttonColor: const Color.fromARGB(255, 236, 199, 211),
                          buttonHeight: 60,
                          buttonWidth: 100,
                          text: const Text("Start"),
                          enableAnimation: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular Course",
                  style: GoogleFonts.robotoCondensed(
                      textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    NewWidget(),
                    SizedBox(
                      width: 15,
                    ),
                    NewWidget(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NeuContainer(
      height: 200,
      width: 150,
      color: Colors.white,
      borderRadius: BorderRadius.circular(13),
      child: Column(
        children: [
          Image.network(
              "https://images.unsplash.com/photo-1533518463841-d62e1fc91373?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Dexter Lab 101",
                style: GoogleFonts.robotoCondensed(
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          NeuIconButton(
            buttonHeight: 30,
            buttonWidth: 30,
            buttonColor: Colors.white,
            icon: const Icon(Icons.arrow_forward),
            enableAnimation: true,
            shadowColor: Colors.transparent,
            borderColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
