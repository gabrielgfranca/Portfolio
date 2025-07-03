import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../build_section.dart';
import '../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Buttons/contact_me_button.dart';
import '../Buttons/round_icon_button.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BuildSection(
      color: kMainSectionPrimaryColor,
      alignment: MainAxisAlignment.end,
      child: [
        Padding(
          padding: const EdgeInsets.only(left: 14, top: 10),
          child: Row(
            children: [
              Icon(
                FontAwesomeIcons.chartSimple,
                size: 18.0,
                color: Colors.white,
              ),
              const SizedBox(width: 10), // Spacing between icon and text
              Text(
                'G A B R I E L   F R A N Ç A',
                style: GoogleFonts.titilliumWeb(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),

        Divider(color: kMainSectionTertiaryColor, thickness: 3.5),

        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 215.0,
                width: 280.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kMainSectionTertiaryColor,
                    width: 14.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(''),
                    //fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                child: Container(
                  height: 42.0,
                  width: 295.0,
                  decoration: BoxDecoration(
                    color: kMainSectionQuaternaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'M O B I L E   D E V E L O P E R',
                      style: GoogleFonts.poppins(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        color: kMainSectionQuinaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 14.0,
              bottom: 14.0,
              left: 45.0,
              right: 45.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: kMainSectionSecondaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(),
            ),
          ),
        ),
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
          padding: const EdgeInsets.only(
            top: 14.0,
            bottom: 42.0,
            left: 45.0,
            right: 45.0,
          ),
          child: ContactMeButton(),
        ),
      ],
    );
  }
}
