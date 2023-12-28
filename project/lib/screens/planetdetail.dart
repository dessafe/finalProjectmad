import 'package:flutter/material.dart';
import 'package:finaltermproject/models/overview_class.dart';

class PlanetDetailScreen extends StatelessWidget {
  final Overview overview;

  const PlanetDetailScreen({Key? key, required this.overview}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black, 
        title: Text(
          overview.name,
          style: TextStyle(color: Colors.white), 
        ),
        iconTheme: IconThemeData(color: Colors.white), 
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              overview.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Card(
              color: Colors.black, 
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white, width: 1.0), 
                borderRadius: BorderRadius.circular(8.0), 
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      overview.description,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Card(
              color: Colors.black, 
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white, width: 1.0), 
                borderRadius: BorderRadius.circular(8.0),),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Physical Appearance:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      overview.physicalapp,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
