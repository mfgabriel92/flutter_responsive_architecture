import 'package:flutter/material.dart';

enum ScreenBreakpoints {
  desktop,
  tablet,
  mobile,
}

ScreenBreakpoints getDeviceScreenType(MediaQueryData mediaQueryData) {
  double deviceWidth = mediaQueryData.size.shortestSide;

  if (deviceWidth >= 1440) {
    return ScreenBreakpoints.desktop;
  } else if (deviceWidth >= 600) {
    return ScreenBreakpoints.tablet;
  } else {
    return ScreenBreakpoints.mobile;
  }
}
