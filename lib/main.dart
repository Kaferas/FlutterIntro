import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite Color",
      "What's your favorite Fruit",
      "What's your favorite Animal",
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("TycoonNet"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion),
          ],
        ),
      ),
      bottomNavigationBar: Row(children: [
        FloatingActionButton(
            onPressed: () => {print("There is something Choosen")},
            backgroundColor: Colors.brown),
        FloatingActionButton(
            onPressed: () => {}, backgroundColor: Colors.amber),
        FloatingActionButton(
            onPressed: () => {}, backgroundColor: Colors.green),
      ]),
    ));
  }
}
