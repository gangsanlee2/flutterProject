import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final bool isBig;
  final Color color;
  final void Function(String) onPressed;

  static const defaultButtonColor =
  Color.fromRGBO(112, 112, 112, 1); // 파이썬의 def __init__(self): 개념
  static const darkButtonColor = Color.fromRGBO(82, 82, 82, 1);
  static const operationButtonColor = Color.fromRGBO(250, 158, 13, 1);

  const Button(
      {super.key,
        required this.text,
        this.isBig = true,
        this.color = Button.defaultButtonColor,
        required this.onPressed});

  const Button.operation( // 파이썬의 @staticmethod 개념
      {super.key,
        required this.text,
        this.isBig = true,
        this.color = Button.operationButtonColor,
        required this.onPressed});

  const Button.large(
      {super.key,
        required this.text,
        this.isBig = true,
        this.color = Button.darkButtonColor,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: isBig ? 2 : 1,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: color),
          onPressed: () => onPressed(text),
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
          ),
        ));
  }
}
