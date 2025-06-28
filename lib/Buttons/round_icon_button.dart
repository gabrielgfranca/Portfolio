import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    required this.onPressed,
    required this.icon,
    required this.color,
    this.iconSize = 28.0,
    this.iconColor = Colors.black, // Default icon size
    super.key,
  });
  final IconData icon;
  final double iconSize;
  final Color iconColor; // Default icon color
  final Color color;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: color,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 0.0,
      child: FaIcon(icon, size: iconSize, color: iconColor),
    );
  }
}
