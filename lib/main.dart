import "package:flutter/material.dart";
import "./question.dart";
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionInd = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionInd == 1) {
        _questionInd = 0;
      } else {
        _questionInd += 1;
      }
    });
    print("answer chosen for question $_questionInd");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite car?',
      'What\'s your favourite colour?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Question(questions[_questionInd]),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
            ],
          )),
    );
  }
}
