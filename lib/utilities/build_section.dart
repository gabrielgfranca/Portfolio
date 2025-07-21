import 'package:flutter/material.dart';
import 'constants.dart';

class BuildSection extends StatelessWidget {
  const BuildSection({
    required this.color,
    required this.child,
    this.alignment = MainAxisAlignment.center,
    this.flex = 1,
    super.key,
    s,
  });
  final Color color;
  final List<Widget> child;
  final MainAxisAlignment alignment;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(kCornerRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 4.0,
              offset: Offset(4, 4), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: alignment,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: child,
        ),
      ),
    );
  }
}
