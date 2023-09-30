import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(myApp());
}

myApp() {
  return const MaterialApp(
    title: 'App1',
    home: Scaffold(
      body: GradientContainer(),
    ),
  );
}
