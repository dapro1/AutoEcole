import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerBox extends StatelessWidget {
  const AnswerBox({
    super.key,
    required this.height,
    required this.answerText,
    required this.answerColor,
    required this.answerTap,
  });

  final double height;
  final String answerText;
  final Color answerColor;
  final Function() answerTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: answerTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.grey),
          color: answerColor,
        ),
        width: 250,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        height: height * 0.045,
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
