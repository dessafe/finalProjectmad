import 'package:finaltermproject/screens/homepage_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool showHomePage = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showHomePage = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedSwitcher(
          duration: Duration(seconds: 1),
          child: showHomePage
              ? HomePageScreen()
              : Image.asset(
                  'assets/images/planetex.jpg',
                  key: ValueKey<String>('splashImage'),
                ),
        ),
      ),
    );
  }
}
