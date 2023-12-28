import 'package:finaltermproject/screens/trivia_screen.dart';
import 'package:flutter/material.dart';
import 'package:finaltermproject/screens/item_selection_screen.dart';
import 'package:finaltermproject/screens/planetList.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/heading.jpg',
          height: 200,
          width: double.infinity,
        ),
        backgroundColor: Colors.black,
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
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Welcome!',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              height: 150,
              child: ButtonListTile(
                title: 'Learn',
                subtitle: 'Learn & Explore planets in the Solar System',
                image1Url:
                    'https://static.vecteezy.com/system/resources/previews/003/539/863/original/space-planet-explore-galaxy-solar-system-cartoon-vector.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlanetList()),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(15.0),
              height: 150,
              child: ButtonListTile(
                title: 'Quizzes',
                subtitle: 'Quizzes about planets to know your knowledge',
                image1Url:
                    'https://i0.wp.com/www.lifeisxbox.eu/wp-content/uploads/2022/01/Knipsel.png?fit=1562%2C835&ssl=1',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemSelectionScreen()),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(15.0),
              height: 150,
              child: ButtonListTile(
                title: 'Planet Trivia',
                subtitle: 'Trivia about planets',
                image1Url:
                    'https://www.shutterstock.com/image-vector/trivia-time-poster-design-template-260nw-1630412920.jpg', 
                onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TriviaScreen()),
                  );
                  
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}

class ButtonListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String image1Url;
  final VoidCallback onTap;

  const ButtonListTile({
    required this.title,
    this.subtitle,
    required this.image1Url,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle!,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            : null,
        onTap: onTap,
        contentPadding: EdgeInsets.all(10),
        leading: Image.network(
          image1Url,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
