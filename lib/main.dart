import 'package:flutter/material.dart';

void main() {
  runApp(FlDev());
}

class FlDev extends StatefulWidget {

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FlDevState();
  }
}

class FlDevState extends State<FlDev> {
  var questionIndex = 0;
  
  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizz App'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}

