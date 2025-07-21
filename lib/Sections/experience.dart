import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/constants.dart';
import '../utilities/build_section.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return BuildSection(
      color: kSecondarySectionPrimaryColor,
      child: [
        Center(
          child: Expanded(
            child: Column(
              children: [
                RawMaterialButton(
                  onPressed: () {},
                  shape: CircleBorder(),
                  fillColor: kMainSectionSecondaryColor,
                  constraints: BoxConstraints.tightFor(
                    width: 124.0,
                    height: 124.0,
                  ),
                  elevation: 4.0,
                  child: Text(
                    '1',
                    style: GoogleFonts.poppins(
                      fontSize: 62.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Y E A R S  O F\nP R O G R A M M I N G',
                  style: GoogleFonts.poppins(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
