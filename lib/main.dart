import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void answerQuestion() {
    print("Answer Chosen");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("My First App")),
        body: Column(children: <Widget>[
          const Text("The Question!"),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text("Answer 1"),
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
        ]),
      ),
    );
  }
}
