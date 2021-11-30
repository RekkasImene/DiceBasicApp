import 'package:flutter/material.dart';
import 'package:projet_test/ui/choice_widget.dart';
import 'package:projet_test/ui/dice_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dice',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const ChoiceWidget()
    );
  }
}
