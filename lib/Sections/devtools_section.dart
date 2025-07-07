import 'package:flutter/material.dart';
import '../build_section.dart';
import '../constants.dart';

class DevtoolsSection extends StatelessWidget {
  const DevtoolsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BuildSection(
      flex: 1,
      color: kSecondarySectionPrimaryColor,
      child: [
        const Text(
          'Section 2 - Part 1',
          style: TextStyle(color: Colors.white, fontSize: 24.0),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
