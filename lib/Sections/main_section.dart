import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/build_section.dart';
import '../utilities/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utilities/round_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utilities/send_email.dart';

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

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35.0,
              vertical: 15.0,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kMainSectionTertiaryColor,
                      width: 14.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  child: Container(
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: kMainSectionQuaternaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'B A C K - E N D   D E V E L O P E R',
                        style: GoogleFonts.poppins(
                          fontSize: 16.0,
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
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: Container(
              decoration: BoxDecoration(
                color: kMainSectionSecondaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                onPressed: () async {
                  final url = Uri.parse(linkedinUrl);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                icon: FontAwesomeIcons.linkedin,
                iconColor: kMainSectionTertiaryColor,
                color: kMainSectionSecondaryColor,
              ),
              const SizedBox(width: kPadding), // Spacing between buttons
              RoundIconButton(
                onPressed: () async {
                  final url = Uri.parse(githubUrl);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                icon: FontAwesomeIcons.github,
                iconColor: kMainSectionTertiaryColor,
                color: kMainSectionSecondaryColor,
              ),
              const SizedBox(width: kPadding), // Spacing between buttons
              RoundIconButton(
                onPressed: () async {
                  final url = Uri.parse(youtubeUrl);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                icon: FontAwesomeIcons.youtube,
                iconColor: kMainSectionTertiaryColor,
                color: kMainSectionSecondaryColor,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            bottom: 45.0,
            left: 45.0,
            right: 45.0,
          ),
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const SendEmail(),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kMainSectionQuaternaryColor,
              fixedSize: const Size(242, 42),
              elevation: 6.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kCornerRadius),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'C O N T A C T   M E !',
                  style: GoogleFonts.poppins(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w800,
                    color: kMainSectionQuinaryColor,
                  ),
                ),
                const SizedBox(width: 10.0), // Spacing between text and icon
                Icon(Icons.email, color: kMainSectionQuinaryColor, size: 28.0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
