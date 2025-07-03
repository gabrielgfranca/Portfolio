import 'package:flutter/material.dart';
import 'sections.dart';

// 'Gabriel França'

void main() {
  runApp(const WebSite());
}

class WebSite extends StatelessWidget {
  const WebSite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('../images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 200.0, vertical: 80.0),
              child: MainPage(),
            ),
          ),
        ),
      ),
    );
  }
}
