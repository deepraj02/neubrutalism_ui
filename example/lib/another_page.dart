import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class AnotherPage extends StatelessWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NeuContainer(
                height: MediaQuery.sizeOf(context).height / 4,
                width: MediaQuery.sizeOf(context).width / 2,
                offset: const Offset(-4, -2),
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                borderColor: Colors.black,
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 80.0),
                      child: Text(
                        "🍑",
                        style: TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
