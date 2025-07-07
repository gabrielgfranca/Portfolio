import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Buttons/round_icon_button.dart';
import '../build_section.dart';
import '../constants.dart';

class SoftskillsSection extends StatelessWidget {
  const SoftskillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BuildSection(
      color: kSecondarySectionPrimaryColor,
      child: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: kSecondarySectionSecondaryColor,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 24.0,
                        ), // Spacing between icon and Container Border
                        Icon(
                          FontAwesomeIcons.brain,
                          size: 20.0,
                          color: Colors.pinkAccent,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ), // Spacing between icon and text
                        Text(
                          'SOFT SKILLS',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              RoundIconButton(
                onPressed: () {},
                icon: FontAwesomeIcons.arrowLeft,
                color: kSecondarySectionPrimaryColor,
                iconColor: Colors.white,
                elevation: 4.0,
              ),
              const SizedBox(width: 25.0), // Spacing between buttons
              RoundIconButton(
                onPressed: () {},
                icon: FontAwesomeIcons.arrowRight,
                color: kSecondarySectionPrimaryColor,
                iconColor: Colors.white,
                elevation: 6.0,
              ),
              const SizedBox(width: 25.0),
            ],
          ),
        ),

        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 15.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: kSecondarySectionSecondaryColor,
                  width: 12.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
