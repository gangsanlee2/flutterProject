import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_flutter/ch23_calculator_v3_7/componenets/display.dart';
import 'package:hello_flutter/ch23_calculator_v3_7/componenets/keyboard.dart';
import 'package:hello_flutter/ch23_calculator_v3_7/providers/calculater_provider.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final CalculatorProvider provider = CalculatorProvider();

  _onPressed(String command) {
    setState(() {
      provider.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          Display(
            text: provider.value,
          ),
          Keyboard(
            onPressed: _onPressed,
          )
        ],
      ),
    );
  }
}
