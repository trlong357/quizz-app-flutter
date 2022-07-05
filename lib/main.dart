import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionList = [
    "Long có đẹp trai không?",
    "Long có mập địt không?",
    "Ti có móm không?"
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex == 2) {
        _questionIndex = 0;
      } else {
        _questionIndex += 1;
      }
    });
    print("Answer Chosen");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("My First App")),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Question(questionList[_questionIndex]),
                ElevatedButton(
                  onPressed: _answerQuestion,
                  child: const Text("Change Question"),
                ),
                ElevatedButton(
                  onPressed: () => print("Answer 2"),
                  child: const Text("Answer 2"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Answer 3");
                  },
                  child: const Text("Answer 3"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
