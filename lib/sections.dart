import 'package:flutter/material.dart';
import 'build_section.dart';
import 'constants.dart';
import 'Sections/main_section.dart';

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
        // Main Section
        MainSection(),
        const SizedBox(width: kPadding), // Spacing between columns
        Expanded(
          flex: 2,
          child: Column(
            children: [
              // Section 2 - DevTools
              BuildSection(
                flex: 1,
                color: kSecondarySectionPrimaryColor,
                child: [
                  const Text(
                    'Section 2 - Part 1',
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              const SizedBox(height: kPadding), // Spacing between sections
              // Section 2 - Projects
              BuildSection(
                flex: 3,
                color: kSecondarySectionPrimaryColor,
                child: [
                  const Text(
                    'Section 2 - Part 2',
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: kPadding), // Spacing between columns
        Expanded(
          flex: 1,
          child: Column(
            children: [
              // Section 3 - Education
              BuildSection(
                color: kSecondarySectionPrimaryColor,
                child: [
                  const Text(
                    'Section 3 - Part 1',
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              const SizedBox(height: kPadding), // Spacing between sections
              // Section 3 - Experience
              BuildSection(
                color: kSecondarySectionPrimaryColor,
                child: [
                  const Text(
                    'Section 3 - Part 2',
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              const SizedBox(height: kPadding), // Spacing between sections
              // Section 3 - Blog
              BuildSection(
                color: kSecondarySectionPrimaryColor,
                child: [
                  const Text(
                    'Section 3 - Part 3',
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
