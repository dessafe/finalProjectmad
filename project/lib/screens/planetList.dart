import 'package:finaltermproject/data/back_data.dart';
import 'package:finaltermproject/models/overview_class.dart';
import 'package:finaltermproject/models/planet_class.dart';
import 'package:finaltermproject/screens/planetdetail.dart';
import 'package:flutter/material.dart';

class PlanetList extends StatelessWidget {
  const PlanetList({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Planets', style: TextStyle(color: Colors.white)),
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
        padding: EdgeInsets.only(top: 20.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
            childAspectRatio: 3 / 2,
          ),
          itemCount: planets.length,
          itemBuilder: (context, index) {
            return PlanetTile(
              planet: planets[index],
              overviews: getOverviewsForPlanet(planets[index].id),
            );
          },
        ),
      ),
    );
  }
}

class PlanetTile extends StatelessWidget {
  final Planet planet;
  final List<Overview> overviews;

  const PlanetTile({required this.planet, required this.overviews});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlanetDetailScreen(overview: overviews.firstWhere((overview) => overview.planetID == planet.id)),
          ),
        );
      },
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              planet.imageUrl,
              fit: BoxFit.cover,
              height: 100,
              width: double.infinity,
            ),
            Text(
              planet.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        margin: EdgeInsets.all(0),
        elevation: 4.0,
      ),
    );
  }
}
