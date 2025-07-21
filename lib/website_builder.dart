import 'package:flutter/material.dart';
import 'Sections/softskills_section.dart';
import 'utilities/constants.dart';
import 'Sections/main_section.dart';
import 'Sections/portfolio_section.dart';
import 'Sections/blog_section.dart';
import 'Sections/devtools_section.dart';
import 'Sections/experience.dart';

class WebSiteBuilder extends StatefulWidget {
  const WebSiteBuilder({super.key});

  @override
  State<WebSiteBuilder> createState() => _WebSiteBuilderState();
}

class _WebSiteBuilderState extends State<WebSiteBuilder> {
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
              Experience(),
              const SizedBox(height: kPadding), // Spacing between sections
              BlogSection(),
            ],
          ),
        ),
      ],
    );
  }
}
