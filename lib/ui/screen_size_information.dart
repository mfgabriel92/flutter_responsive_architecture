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
  
  bool get isWatch => deviceScreenType == ScreenBreakpoints.watch;
  bool get isMobile => deviceScreenType == ScreenBreakpoints.mobile;
  bool get isTablet => deviceScreenType == ScreenBreakpoints.tablet;
  bool get isDesktop => deviceScreenType == ScreenBreakpoints.desktop;

  @override
  String toString() {
    return 'Device Screen Type: $deviceScreenType\n'
        'Screen Size: $screenSize\n'
        'Widget Size: $widgetSize';
  }
}
