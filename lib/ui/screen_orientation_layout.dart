import 'package:flutter/material.dart';

class ScreenOrientationLayout extends StatelessWidget {
  final Widget Function(BuildContext) portrait;
  final Widget Function(BuildContext) landscape;

  ScreenOrientationLayout({
    @required this.portrait,
    this.landscape,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      var orientation = MediaQuery.of(context).orientation;

      if (orientation == Orientation.landscape) {
        if (landscape != null) return landscape(context);
      }

      return portrait(context);
    });
  }
}
