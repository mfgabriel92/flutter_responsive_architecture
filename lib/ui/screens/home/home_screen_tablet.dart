import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer/app_drawer.dart';

class HomeScreenTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    var children = [
      Expanded(child: Container()),
      AppDrawer(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: orientation == Orientation.portrait
          ? Column(
              children: children,
            )
          : Row(
              children: children.reversed.toList(),
            ),
    );
  }
}
