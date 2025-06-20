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
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 200.0, vertical: 80.0),
            child: MainPage(),
          ),
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Sections field = Sections();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        field.rightColumn(),
        const SizedBox(width: 20.0), // Spacing between columns
        field.middleColumn(),
        const SizedBox(width: 20.0), // Spacing between columns
        field.leftColumn(),
      ],
    );
  }
}
