import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactMeButton extends StatelessWidget {
  const ContactMeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kMainSectionQuaternaryColor,
        fixedSize: const Size(242, 42),
        elevation: 6.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kCornerRadius),
        ),
      ),
      onPressed: () {},
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
    );
  }
}
