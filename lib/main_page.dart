import 'package:flutter/material.dart';
import 'Sections/softskills_section.dart';
import 'constants.dart';
import 'Sections/main_section.dart';
import 'Sections/portfolio_section.dart';
import 'Sections/blog_section.dart';
import 'Sections/education_section.dart';
import 'Sections/devtools_section.dart';

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
              DevtoolsSection(),
              const SizedBox(height: kPadding), // Spacing between sections
              PortfolioSection(),
            ],
          ),
        ),
        const SizedBox(width: kPadding), // Spacing between columns
        Expanded(
          flex: 1,
          child: Column(
            children: [
              SoftskillsSection(),
              const SizedBox(height: kPadding), // Spacing between sections
              BlogSection(),
              const SizedBox(height: kPadding), // Spacing between sections
              EducationSection(),
            ],
          ),
        ),
      ],
    );
  }
}
