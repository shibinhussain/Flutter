import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  void clickHandler() {
    log('Button Clicked');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const StyledText('Hello World!!!'),
          const SizedBox(height: 20),
          TextButton(
            onPressed: clickHandler,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.all(25),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: const Text('SUBMIT'),
          ),
        ],
      )
          // child: Image.asset('assets/images/dice-2.png'),

          ),
    );
  }
}
