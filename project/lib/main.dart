
import 'package:finaltermproject/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(exPlanet());
}

class exPlanet extends StatefulWidget {
  const exPlanet ({super.key});

  @override
  State<exPlanet> createState() => _exPlanetState();
}

class _exPlanetState extends State<exPlanet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

