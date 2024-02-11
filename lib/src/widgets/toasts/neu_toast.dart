import 'package:flutter/material.dart';

class NeuToast extends StatelessWidget {
  const NeuToast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void show(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
