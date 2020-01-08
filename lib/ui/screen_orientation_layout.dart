import 'package:flutter/material.dart';

class ScreenOrientationLayout extends StatelessWidget {
  final Widget portrait;
  final Widget landscape;

  ScreenOrientationLayout({
    @required this.portrait,
    this.landscape,
  });

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.landscape) {
      return landscape ?? portrait;
    }

    return portrait;
  }
}
