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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //debugShowMaterialGrid: true,
      home: Scaffold(
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
                    style: GoogleFonts.anton(
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
                      searchBarColor: Colors.white,
                      hintText: "What are you looking for",
                      borderRadius: BorderRadius.circular(12),
                    ),
                    NeuIconButton(
                        buttonColor: const Color.fromARGB(255, 234, 203, 214),
                        borderRadius: BorderRadius.circular(10),
                        icon: const Icon(Icons.sort),
                        enableAnimation: true)
                  ],
                )
              ],
            )),
      ),
    );
  }
}
