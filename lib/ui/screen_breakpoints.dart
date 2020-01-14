import 'package:flutter/material.dart';

enum ScreenBreakpoints {
  desktop,
  tablet,
  mobile,
  watch,
}

ScreenBreakpoints getDeviceScreenType(MediaQueryData mediaQueryData) {
  double deviceWidth = mediaQueryData.size.width;

  if (deviceWidth >= 1440) return ScreenBreakpoints.desktop;
  if (deviceWidth >= 600) return ScreenBreakpoints.tablet;
  if (deviceWidth <= 320) return ScreenBreakpoints.watch;

  return ScreenBreakpoints.mobile;
}
