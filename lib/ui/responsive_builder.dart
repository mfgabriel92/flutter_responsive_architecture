import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/ui/size_information.dart';
import 'package:flutter_responsive_arch/utils/device_screen_type.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    SizeInformation sizeInformation,
  ) builder;

  ResponsiveBuilder({
    this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      var mediaQuery = MediaQuery.of(context);
      var sizeInformation = SizeInformation(
        deviceScreenType: getDeviceScreenType(mediaQuery),
        screenSize: mediaQuery.size,
        widgetSize: Size(boxConstraints.maxWidth, boxConstraints.maxHeight),
      );

      return builder(context, sizeInformation);
    });
  }
}
