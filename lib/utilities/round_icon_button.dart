import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    required this.onPressed,
    required this.icon,
    required this.color,
    this.iconSize = 28.0,
    this.iconColor = Colors.black,
    this.elevation = 0.0,
    this.pWidth = 48.0,
    this.pHeight = 48.0, // Default icon size
    super.key,
  });
  final IconData icon;
  final double iconSize;
  final Color iconColor; // Default icon color
  final Color color;
  final GestureTapCallback onPressed;
  final double elevation;
  final double pWidth;
  final double pHeight;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: color,
      constraints: BoxConstraints.tightFor(width: pWidth, height: pHeight),
      elevation: elevation,
      child: FaIcon(icon, size: iconSize, color: iconColor),
    );
  }
}
