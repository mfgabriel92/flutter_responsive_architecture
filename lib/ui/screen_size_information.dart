import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/ui/screen_breakpoints.dart';

class ScreenSizeInformation {
  final ScreenBreakpoints deviceScreenType;
  final Size screenSize;
  final Size widgetSize;

  ScreenSizeInformation({
    this.deviceScreenType,
    this.screenSize,
    this.widgetSize,
  });

  @override
  String toString() {
    return 'Device Screen Type: $deviceScreenType\n'
        'Screen Size: $screenSize\n'
        'Widget Size: $widgetSize';
  }
}
