import 'package:flutter/material.dart';
import '../build_section.dart';
import '../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Buttons/round_icon_button.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BuildSection(
      flex: 3,
      color: kSecondarySectionPrimaryColor,
      child: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: kSecondarySectionSecondaryColor,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 25.0,
                        ), // Spacing between icon and text
                        Icon(
                          FontAwesomeIcons.image,
                          size: 25.0,
                          color: kSecondarySectionSenaryColor,
                        ),
                        const SizedBox(
                          width: 25.0,
                        ), // Spacing between icon and text
                        Text(
                          'PORTFOLIO',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(), // Pushes the dots to the right
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: List.generate(6, (index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0,
                                  ),
                                  child: const CircleAvatar(
                                    radius: 4.0,
                                    backgroundColor:
                                        kSecondarySectionPrimaryColor,
                                  ),
                                );
                              }),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ), // Spacing between rows
                            Row(
                              children: List.generate(6, (index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0,
                                  ),
                                  child: const CircleAvatar(
                                    radius: 4.0,
                                    backgroundColor:
                                        kSecondarySectionPrimaryColor,
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 25.0,
                        ), // Spacing between dots and end of container
                      ],
                    ),
                  ),
                ),
              ),
              RoundIconButton(
                onPressed: () {},
                pHeight: 60.0,
                pWidth: 60.0,
                icon: FontAwesomeIcons.arrowLeft,
                color: kSecondarySectionPrimaryColor,
                iconColor: Colors.white,
                elevation: 4.0,
              ),
              const SizedBox(width: 25.0), // Spacing between buttons
              RoundIconButton(
                onPressed: () {},
                pHeight: 60.0,
                pWidth: 60.0,
                icon: FontAwesomeIcons.arrowRight,
                color: kSecondarySectionPrimaryColor,
                iconColor: Colors.white,
                elevation: 6.0,
              ),
              const SizedBox(width: 25.0), // Spacing between buttons
            ],
          ),
        ),

        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
              right: 25.0,
              bottom: 25.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: kSecondarySectionTertiaryColor,
                  width: 16.0,
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
