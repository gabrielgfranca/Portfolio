import 'package:flutter/material.dart';
import '../build_section.dart';
import '../constants.dart';
import 'package:marquee_widget/marquee_widget.dart';

class DevtoolsSection extends StatefulWidget {
  const DevtoolsSection({super.key});

  @override
  State<DevtoolsSection> createState() => _DevtoolsSectionState();
}

class _DevtoolsSectionState extends State<DevtoolsSection> {
  final logos = [flutterLogo, dartLogo, kotlinLogo, pythonLogo, cLogo];
  List<Widget> repeatWidgets(List<Widget> list, int times) {
    return List.filled(times, list)
        .expand(
          (e) => e.map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: item,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return BuildSection(
      flex: 1,
      color: kSecondarySectionPrimaryColor,
      child: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    constraints: const BoxConstraints(minHeight: 200.0),
                    decoration: BoxDecoration(
                      color: kSecondarySectionSecondaryColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Marquee(
                            direction: Axis.horizontal,
                            directionMarguee: DirectionMarguee.oneDirection,
                            autoRepeat: true,
                            animationDuration: const Duration(seconds: 15),
                            backDuration: Duration.zero,
                            pauseDuration: Duration.zero,
                            child: SizedBox(
                              width: 1000,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: repeatWidgets(logos, 2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
