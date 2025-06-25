import 'package:flutter/material.dart';
import 'constants.dart';

class BuildSection extends StatelessWidget {
  const BuildSection({required this.color, required this.child, super.key});
  final Color color;
  final List<Widget> child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(kCornerRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: child,
      ),
    );
  }
}
