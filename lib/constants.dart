import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const kCornerRadius = 20.0;
const kPadding = 20.0;
const kLogoSize = 60.0;

// Main Section Colors
const kMainSectionPrimaryColor = Color(0xff2A4BB3);
const kMainSectionSecondaryColor = Color(0xff213C8F);
const kMainSectionTertiaryColor = Color(0xff192D6B);
const kMainSectionQuaternaryColor = Color(0xff44ac9e);
const kMainSectionQuinaryColor = Color(0xff36897E);

// Secondary and Tertiary Section Colors
const kSecondarySectionPrimaryColor = Color(0xff2D2D38);
const kSecondarySectionSecondaryColor = Color(0xff1C1C25);
const kSecondarySectionTertiaryColor = Color(0xff101016);
const kSecondarySectionQuaternaryColor = Color(0xff948979);
const kSecondarySectionQuinaryColor = Color(0xff686259);
const kSecondarySectionSenaryColor = Color(0xffECB236);

ColorFilter logoColor = ColorFilter.mode(
  Colors.white.withValues(alpha: 0.75),
  BlendMode.srcIn,
);
// Logo Widgets
final Widget flutterLogo = SvgPicture.asset(
  'icons/flutter-plain.svg',
  height: kLogoSize,
  colorFilter: logoColor,
);
final Widget dartLogo = SvgPicture.asset(
  'icons/dart-plain.svg',
  height: kLogoSize,
  colorFilter: logoColor,
);
final Widget kotlinLogo = SvgPicture.asset(
  'icons/kotlin-plain.svg',
  height: kLogoSize,
  colorFilter: logoColor,
);
final Widget pythonLogo = SvgPicture.asset(
  'icons/python-plain.svg',
  height: kLogoSize,
  colorFilter: logoColor,
);
final Widget cLogo = SvgPicture.asset(
  'icons/c-plain.svg',
  height: kLogoSize,
  colorFilter: logoColor,
);
