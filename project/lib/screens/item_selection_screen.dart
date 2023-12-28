import 'package:flutter/material.dart';
import 'package:finaltermproject/screens/quiz.dart';

class ItemSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Quiz',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choose a number of Items',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: ListView(
                    children: [
                      Card(
                        child: ListTile(
                          title: Center(child: Text('10 Items Quiz')),
                          onTap: () {
                            _startQuiz(context, 10);
                          },
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Center(child: Text('20 Items Quiz')),
                          onTap: () {
                            _startQuiz(context, 20);
                          },
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Center(child: Text('30 Items Quiz')),
                          onTap: () {
                            _startQuiz(context, 30);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _startQuiz(BuildContext context, int numberOfItems) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Quiz(numberOfItems: numberOfItems),
      ),
    );
  }
}
