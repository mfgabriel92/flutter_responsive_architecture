import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/utils/device_screen_type.dart';

class SizeInformation {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size widgetSize;

  SizeInformation({
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
