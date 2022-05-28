import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': "What's your favorite Color?",
      'answers': ["Red", "Black", "Grey", "Pink", "Green"]
    },
    {
      'questionText': "What's your favorite Animal?",
      'answers': ["Rabbit", "Snake", "Lion", "Cat", "Dog"]
    },
    {
      'questionText': "What's your favorite Instructor?",
      'answers': ["DG seller", "Pipeline", "Martin", "Kaferas", "Chriss"]
    }
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print("We have more questions just wait");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("QuestionResponse"),
        ),
        body: Center(
          child: Column(
            children: [
              Question(
                questionText: questions[_questionIndex]['questionText'],
              ),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          ),
        ),
      ),
    );
  }
}
