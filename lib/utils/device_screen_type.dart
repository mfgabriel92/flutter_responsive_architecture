import 'package:flutter/material.dart';

enum DeviceScreenType {
  desktop,
  tablet,
  mobile,
}

DeviceScreenType getDeviceScreenType(MediaQueryData mediaQueryData) {
  double deviceWidth = mediaQueryData.size.shortestSide;

  if (deviceWidth >= 1440) {
    return DeviceScreenType.desktop;
  } else if (deviceWidth >= 600) {
    return DeviceScreenType.tablet;
  } else {
    return DeviceScreenType.mobile;
  }
}
