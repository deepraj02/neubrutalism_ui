import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF0E4E4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainView(
              angle: -0.4,
              buttonColor: Color(0xFFf4d739),
              text: 'Mobile View',
            ),
            MainView(
              angle: 0.3,
              buttonColor: Colors.green,
              text: 'Under',
            ),
            MainView(
              angle: -0.5,
              buttonColor: Color(0xFFC99A6F),
              text: 'Development',
            ),
            SizedBox(height: 100),
            LinkButtons()
          ],
        ),
      ),
    );
  }
}

class LinkButtons extends StatelessWidget {
  const LinkButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        NeuTextButton(
          onPressed: () {},
          borderRadius: BorderRadius.circular(20),
          buttonHeight: MediaQuery.sizeOf(context).height * 0.1,
          buttonWidth: MediaQuery.sizeOf(context).width * 0.4,
          borderWidth: 1,
          buttonColor: const Color(0xFF9fb7f4),
          enableAnimation: true,
          text: Text(
            'Give the Project a Star',
            style: GoogleFonts.anton(
                textStyle: const TextStyle(
              fontSize: 20,
            )),
          ),
        ),
        NeuTextButton(
          onPressed: () {},
          borderRadius: BorderRadius.circular(20),
          buttonHeight: MediaQuery.sizeOf(context).height * 0.1,
          buttonWidth: MediaQuery.sizeOf(context).width * 0.5,
          borderWidth: 1,
          buttonColor: const Color(0xFFc9756e),
          enableAnimation: true,
          text: Text(
            'View Project on pub.dev',
            style: GoogleFonts.anton(
                textStyle: const TextStyle(
              fontSize: 20,
            )),
          ),
        ),
      ],
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({
    super.key,
    required this.angle,
    required this.buttonColor,
    required this.text,
  });

  final double angle;
  final Color buttonColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Transform.rotate(
        angle: angle,
        child: NeuTextButton(
          buttonHeight: MediaQuery.sizeOf(context).height * 0.1,
          buttonWidth: MediaQuery.sizeOf(context).width * 0.5,
          borderWidth: 1,
          buttonColor: buttonColor,
          enableAnimation: false,
          text: Text(
            text,
            style: GoogleFonts.anton(
                textStyle: const TextStyle(
              fontSize: 30,
            )),
          ),
        ),
      ),
    );
  }
}
