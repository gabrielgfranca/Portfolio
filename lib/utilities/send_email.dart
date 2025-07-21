import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../utilities/round_icon_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SendEmail extends StatelessWidget {
  const SendEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      backgroundColor: kMainSectionPrimaryColor,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: 720,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: kMainSectionSecondaryColor,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        const SizedBox(width: 24.0),
                        Icon(Icons.mail, size: 32.0, color: Colors.white),
                        const SizedBox(width: 16.0),
                        Text(
                          'GABRIELGFRANCA7@GMAIL.COM',
                          style: GoogleFonts.poppins(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                RoundIconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icons.close,
                  color: Colors.redAccent,
                  iconColor: Colors.white,
                  elevation: 0.0,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(color: kMainSectionTertiaryColor, thickness: 2.5),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                        color: Colors.white.withValues(alpha: 0.5),
                      ),
                      filled: true,
                      fillColor: kSecondarySectionSecondaryColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            TextField(
              maxLines: 5,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: 'Type your message',
                hintStyle: TextStyle(
                  color: Colors.white.withValues(alpha: 0.5),
                ),
                filled: true,
                fillColor: kSecondarySectionSecondaryColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                // send email logic here
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kMainSectionQuaternaryColor,
                fixedSize: const Size(242, 42),
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'S E N D  M E S S A G E',
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                      color: kMainSectionQuinaryColor,
                    ),
                  ),
                  const SizedBox(width: 10.0), // Spacing between text and icon
                  Icon(Icons.send, color: kMainSectionQuinaryColor, size: 28.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
