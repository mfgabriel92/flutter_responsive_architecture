import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/ui/screen_breakpoints.dart';
import 'package:flutter_responsive_arch/ui/screen_size_information.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    ScreenSizeInformation sizeInformation,
  ) builder;

  ResponsiveBuilder({
    this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      var mediaQuery = MediaQuery.of(context);
      var sizeInformation = ScreenSizeInformation(
        deviceScreenType: getDeviceScreenType(mediaQuery),
        screenSize: mediaQuery.size,
        widgetSize: Size(boxConstraints.maxWidth, boxConstraints.maxHeight),
      );

      return builder(context, sizeInformation);
    });
  }
}
