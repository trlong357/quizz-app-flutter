import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex == 2) {
        _questionIndex = 0;
      } else {
        _questionIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questionAnswer = [
      {
        'questionText': 'What\'s your favorite color?',
        'answer': ['Black', 'Blue', 'Yellow', 'Red'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answer': ['Dog', 'Cat', 'Lion', 'Turtle'],
      },
      {
        'questionText': 'What\'s your favorite books?',
        'answer': ['Harry Potter', 'Da Vinci Code', 'How money works', 'Conan'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("My First App")),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Question(
                  questionAnswer[_questionIndex]['questionText'] as String,
                ),
                ...(questionAnswer[_questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList(),
                ElevatedButton(
                  onPressed: _answerQuestion,
                  child: const Text("Change Question"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
