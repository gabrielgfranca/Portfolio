import 'package:flutter/material.dart';
import '../utilities/build_section.dart';
import '../utilities/constants.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class DevtoolsSection extends StatefulWidget {
  const DevtoolsSection({super.key});

  @override
  State<DevtoolsSection> createState() => _DevtoolsSectionState();
}

class _DevtoolsSectionState extends State<DevtoolsSection> {
  final logos = [python, java, rust, c];
  final _controller = InfiniteScrollController();

  void startMarqueeLoop() {
    _controller
        .animateTo(
          _controller.offset + 10000,
          duration: const Duration(seconds: 150),
          curve: Curves.linear,
        )
        .then((_) {
          startMarqueeLoop();
        });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      startMarqueeLoop();
    });
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: InfiniteCarousel.builder(
                              itemCount: logos.length,
                              itemExtent: 100.0,
                              axisDirection: Axis.horizontal,
                              loop: true,
                              velocityFactor: 0.1,
                              controller: _controller,
                              itemBuilder: (context, index, realIndex) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                  ),
                                  child: logos[index],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
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
