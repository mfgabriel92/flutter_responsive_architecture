import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/ui/screen_breakpoints.dart';

import 'responsive_builder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  ScreenTypeLayout({
    this.desktop,
    this.tablet,
    @required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizeInformation) {
        if (sizeInformation.deviceScreenType == ScreenBreakpoints.desktop) {
          if (desktop != null) {
            return desktop;
          }
        }

        if (sizeInformation.deviceScreenType == ScreenBreakpoints.tablet) {
          if (tablet != null) {
            return tablet;
          }
        }

        return mobile;
      },
    );
  }
}
