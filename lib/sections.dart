import 'package:flutter/material.dart';
import 'build_section.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Buttons/contact_me_button.dart';
import 'Buttons/round_icon_button.dart';

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
        BuildSection(
          color: kMainSectionPrimaryColor,
          alignment: MainAxisAlignment.end,
          child: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundIconButton(
                  onPressed: () {},
                  icon: FontAwesomeIcons.linkedin,
                  iconColor: kMainSectionTertiaryColor,
                  color: kMainSectionSecondaryColor,
                ),
                const SizedBox(width: kPadding), // Spacing between buttons
                RoundIconButton(
                  onPressed: () {},
                  icon: FontAwesomeIcons.github,
                  iconColor: kMainSectionTertiaryColor,
                  color: kMainSectionSecondaryColor,
                ),
                const SizedBox(width: kPadding), // Spacing between buttons
                RoundIconButton(
                  onPressed: () {},
                  icon: FontAwesomeIcons.youtube,
                  iconColor: kMainSectionTertiaryColor,
                  color: kMainSectionSecondaryColor,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ContactMeButton(),
            ),
          ],
        ),
        const SizedBox(width: kPadding), // Spacing between columns
        Expanded(
          flex: 2,
          child: Column(
            children: [
              // Section 2 - DevTools
              BuildSection(
                flex: 1,
                color: Colors.green,
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
                color: Colors.lightGreen,
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
                color: Colors.blue[300]!,
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
                color: Colors.blue[400]!,
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
                color: Colors.blue[500]!,
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
