import 'package:flutter/material.dart';
import 'bluePrints.dart';
import 'constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: BuildSection(
            color: Colors.red,
            child: [
              const Text(
                'Section 1',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(width: kPadding), // Spacing between columns
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: BuildSection(
                  color: Colors.green,
                  child: [
                    const Text(
                      'Section 2 - Part 1',
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20.0), // Spacing between sections

              Expanded(
                flex: 3,
                child: BuildSection(
                  color: Colors.lightGreen,
                  child: [
                    const Text(
                      'Section 2 - Part 2',
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: kPadding), // Spacing between columns
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Expanded(
                child: BuildSection(
                  color: Colors.blue[300]!,
                  child: [
                    const Text(
                      'Section 3 - Part 1',
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: kPadding), // Spacing between sections

              Expanded(
                child: BuildSection(
                  color: Colors.blue[400]!,
                  child: [
                    const Text(
                      'Section 3 - Part 2',
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: kPadding), // Spacing between sections

              Expanded(
                child: BuildSection(
                  color: Colors.blue[500]!,
                  child: [
                    const Text(
                      'Section 3 - Part 3',
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
