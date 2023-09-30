import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 3, 106, 25),
            Color.fromARGB(255, 183, 199, 11)
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('Hello world!!!'),
      ),
    );
  }
}
