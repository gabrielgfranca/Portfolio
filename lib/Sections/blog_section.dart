import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../build_section.dart';
import '../constants.dart';

class BlogSection extends StatelessWidget {
  const BlogSection({super.key});

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
                          FontAwesomeIcons.laptop,
                          size: 20.0,
                          color: kMainSectionQuaternaryColor,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ), // Spacing between icon and text
                        Text(
                          'MY BLOG',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ), // Spacing between dots and end of container

                        const Spacer(), // Pushes the dots to the right
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: List.generate(4, (index) {
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
                              children: List.generate(4, (index) {
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
                        const SizedBox(width: 25.0),
                      ],
                    ),
                  ),
                ),
              ),
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
