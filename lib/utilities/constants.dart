import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const kCornerRadius = 20.0;
const kPadding = 20.0;
const kLogoSize = 60.0;

const kMainSectionPrimaryColor = Color(0xff2A4BB3);
const kMainSectionSecondaryColor = Color(0xff213C8F);
const kMainSectionTertiaryColor = Color(0xff192D6B);
const kMainSectionQuaternaryColor = Color(0xff44ac9e);
const kMainSectionQuinaryColor = Color(0xff36897E);
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
final Widget python = SvgPicture.asset(
  'icons/python-plain.svg',
  height: kLogoSize,
  colorFilter: logoColor,
);
final Widget c = SvgPicture.asset(
  'icons/c-plain.svg',
  height: kLogoSize,
  colorFilter: logoColor,
);
final Widget rust = SvgPicture.asset(
  'icons/rust-original.svg',
  height: kLogoSize,
  colorFilter: logoColor,
);
final Widget java = SvgPicture.asset(
  'icons/java-plain.svg',
  height: kLogoSize,
  colorFilter: logoColor,
);

const String linkedinUrl =
    'https://www.linkedin.com/in/gabriel-fran%C3%A7a-b73899216/';
const String githubUrl = 'https://github.com/gabrielgfranca';
const String youtubeUrl = 'https://www.youtube.com/@CoffeeAndCodeDiary';
