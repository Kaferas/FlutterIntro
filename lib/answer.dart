import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        child: Text(answerText),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
            Colors.white,
          ),
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 170, 86, 86)),
        ),
        onPressed: () {
          selectHandler;
        },
      ),
    );
  }
}
