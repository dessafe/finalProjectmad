
import 'package:finaltermproject/data/planet_data.dart';
import 'package:flutter/material.dart';


class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {
  int _currentIndex = 0;

  void _nextTrivia() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % planets.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Planet Trivia', 
        style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white)
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/trivia.jpg', 
              height: 200,
              fit: BoxFit.fill,
            ),
            Card(
              color: Colors.white,
              elevation: 4.0,
              margin: EdgeInsets.only(top: 16.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      planets[_currentIndex].name,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple.shade900),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      planets[_currentIndex].description,
                      style: TextStyle(fontSize: 16, color: Colors.deepPurple.shade900),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            IconButton(
              onPressed: _nextTrivia,
              icon: Icon(Icons.arrow_forward),
              iconSize: 30.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
