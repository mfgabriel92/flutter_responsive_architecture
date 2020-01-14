import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/ui/responsive_builder.dart';
import 'package:flutter_responsive_arch/ui/screen_breakpoints.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;
  final Widget watch;

  ScreenTypeLayout({
    this.desktop,
    this.tablet,
    @required this.mobile,
    this.watch,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizeInformation) {
        if (sizeInformation.deviceScreenType == ScreenBreakpoints.desktop) {
          if (desktop != null) return desktop;
          if (tablet != null) return tablet;
        }

        if (sizeInformation.deviceScreenType == ScreenBreakpoints.tablet) {
          if (tablet != null) return tablet;
        }

        if (sizeInformation.deviceScreenType == ScreenBreakpoints.watch) {
          if (watch != null) return watch;
        }

        return mobile;
      },
    );
  }
}
