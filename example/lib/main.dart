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
      resizeToAvoidBottomInset: false,
      extendBody: true,
      // backgroundColor: const Color.fromARGB(255, 232, 210, 236),
      body: SafeArea(
          bottom: false,
          minimum: const EdgeInsets.only(top: 30, left: 10, right: 10),
          child: SingleChildScrollView(
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NeuSearchBar(
                      searchController: controller,
                      keyboardType: TextInputType.name,
                      searchBarColor: Colors.white,
                      hintText: "What are you looking for",
                      borderRadius: BorderRadius.circular(12),
                    ),
                    NeuIconButton(
                      buttonWidth: 60,
                      buttonColor: const Color.fromARGB(255, 234, 203, 214),
                      borderRadius: BorderRadius.circular(10),
                      icon: const Icon(Icons.sort),
                      //onPressed: () => print("hii"),
                      enableAnimation: false,
                    )
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
                            buttonColor:
                                const Color.fromARGB(255, 236, 199, 211),
                            buttonHeight: 60,
                            buttonWidth: 100,
                            enableAnimation: true,
                            onPressed: () {
                              debugPrint("Hello Neubrutalism");
                            },
                            text: Text(
                              "Start",
                              style: GoogleFonts.robotoCondensed(
                                  textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              )),
                            ),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      NewWidget(
                        image: Image.network(
                            'https://images.unsplash.com/photo-1533518463841-d62e1fc91373?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80'),
                        text: 'Dexter Lab 101',
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      NewWidget(
                        image: Image.network(
                            'https://images.unsplash.com/photo-1640499900704-b00dd6a1103a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2942&q=80'),
                        text: 'Cosmos',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Top Mentors",
                    style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    )),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      MentorsCard(),
                      MentorsCard(),
                      MentorsCard(),
                      MentorsCard(),
                      MentorsCard(),
                      MentorsCard(),
                      MentorsCard(),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class MentorsCard extends StatelessWidget {
  const MentorsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NeuContainer(
      shadowColor: Colors.transparent,
      color: Colors.white,
      height: 80,
      width: 250,
      borderRadius: BorderRadius.circular(10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: NeuCard(
              borderRadius: BorderRadius.circular(50),
              shadowColor: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2864&q=80',
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "John Doe",
                textAlign: TextAlign.start,
                style: GoogleFonts.robotoCondensed(
                  textStyle: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "Full-Stack Developer",
                textAlign: TextAlign.start,
                style: GoogleFonts.robotoCondensed(
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.image,
    required this.text,
  });
  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NeuContainer(
        height: 260,
        width: 230,
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        child: Column(
          children: [
            image,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  text,
                  style: GoogleFonts.robotoCondensed(
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: [
                  const Icon(Icons.access_time_outlined),
                  Text(
                    "30 hrs",
                    style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    )),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Icon(Icons.star_border),
                  Text(
                    "4.5",
                    style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: NeuIconButton(
                    buttonHeight: 30,
                    buttonWidth: 30,
                    buttonColor: const Color.fromARGB(255, 248, 250, 194),
                    icon: const Icon(Icons.arrow_forward),
                    enableAnimation: true,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
