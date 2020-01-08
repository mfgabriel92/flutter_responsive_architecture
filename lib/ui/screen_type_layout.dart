import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/ui/responsive_builder.dart';
import 'package:flutter_responsive_arch/utils/device_screen_type.dart';

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
        if (sizeInformation.deviceScreenType == DeviceScreenType.desktop) {
          if (desktop != null) {
            return desktop;
          }
        }

        if (sizeInformation.deviceScreenType == DeviceScreenType.tablet) {
          if (tablet != null) {
            return tablet;
          }
        }

        return mobile;
      },
    );
  }
}
