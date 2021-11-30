
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projet_test/ui/dice_widget.dart';

class ChoiceWidget extends StatefulWidget {
  const ChoiceWidget({Key? key}) : super(key: key);

  @override
  _ChoiceWidgetState createState() => _ChoiceWidgetState();
}

class _ChoiceWidgetState extends State<ChoiceWidget> {
  @override
  Widget build(BuildContext context) {
    int? _faceNumber;
    TextEditingController _controller;

    @override
    void initState(){
      super.initState();
      _controller= TextEditingController();
      _controller.addListener(() {
        debugPrint("controller");
        try{
          _faceNumber=int.parse(_controller.text);
        } on FormatException {
          debugPrint("_faceNumber");
        }
      });
    }

    return Scaffold(
        appBar: AppBar(title: const Text("Choise faces number"),),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: const InputDecoration(hintText: "Enter a number"),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity ,
                child: ElevatedButton(
                    onPressed: (){
                      if(_faceNumber != null){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)
                              =>DiceWidget(facesNumber: _faceNumber!,)
                          )
                      );
                      }

                    },
                    child: Text("Go and roll".toUpperCase())
                )
              )
            ]

          ),
        )
    );
  }
}
