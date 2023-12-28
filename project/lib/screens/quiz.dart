
import 'package:flutter/material.dart';
import 'package:finaltermproject/data/quiz_data.dart';

class Quiz extends StatefulWidget {
  final int numberOfItems;

  const Quiz({Key? key, required this.numberOfItems}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _questionIndex = 0;
  int _score = 0;

  void _answerQuestion(String selectedOption) {
    if (questions[_questionIndex].correctOption == selectedOption) {
      _score++;
    }

    setState(() {
      if (_questionIndex < widget.numberOfItems - 1) {
        _questionIndex++;
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Card(
              color: Colors.white,
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Quiz Completed',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Your score: $_score out of ${widget.numberOfItems}',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 16.0),
                    IconButton(
                      icon: Icon(Icons.refresh),
                      onPressed: () {
                        Navigator.of(context).pop();
                        _resetQuiz();
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }
    });
  }

  void _resetQuiz() {
    
    questions.shuffle();

    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Planet Quiz',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.deepPurple.shade900],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  color: Colors.white,
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'Question ${_questionIndex + 1}: ${questions[_questionIndex].questionText}',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple.shade900),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Column(
                  children: questions[_questionIndex].options.map((option) {
                    return ElevatedButton(
                      onPressed: () => _answerQuestion(option),
                      child: Text(option),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
