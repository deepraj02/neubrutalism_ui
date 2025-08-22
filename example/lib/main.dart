import 'package:example/views/mobile_view.dart';
import 'package:example/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(const NeuLandingSite());
}

class NeuLandingSite extends StatelessWidget {
  const NeuLandingSite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SiteContent(),
    ).animate().fadeIn();
  }
}

class SiteContent extends StatelessWidget {
  const SiteContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileView(),
      tablet: TabletView(),
      desktop: DesktopView(),
    );
  }
}


class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF0E4E4),
      body: Center(
        child: GradientText(
          style: TextStyle(
            fontSize: 100,
            fontWeight: FontWeight.bold,
          ),
          text: 'NeuBrutalism',
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 229, 115, 147),
            Color.fromARGB(255, 51, 162, 31),
          ]),
        ),
      ),
    );
  }
}

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0E4E4),
      body: Center(
        child: GradientText(
          style: const TextStyle(
            fontSize: 180,
            fontWeight: FontWeight.bold,
          ),
          text: 'NeuBrutalism',
          gradient: LinearGradient(colors: [
            Colors.red[300]!,
            Colors.purple.shade700,
          ]),
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText({
    Key? key,
    required this.text,
    this.style,
    required this.gradient,
  }) : super(key: key);
  final String text;
  final TextStyle? style;
  final Gradient gradient;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
