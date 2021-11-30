import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projet_test/repository/dice_repository.dart';

class DiceWidget extends StatefulWidget{
  final int facesNumber;
  const DiceWidget({Key? key, required this.facesNumber}) : super(key: key);

  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  int _diceValue = DiceRepository.NOT_ROLLED ;
  final _repository = DiceRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Roll the dice"),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: roll,
                child: Text("Roll the dice".toUpperCase())),),
            const SizedBox(height: 16),
            Opacity (
                opacity : _diceValue ==
                    DiceRepository.NOT_ROLLED ? 0 : 1,
                child : Text (
                    " Result : $_diceValue ",
                    style : const TextStyle ( fontSize : 30)
                )
            ),
          ],


        ),

      )
    );
  }
  void roll () {
    setState (() {
      _diceValue = _repository.roll(widget.facesNumber);
    });
  }

}