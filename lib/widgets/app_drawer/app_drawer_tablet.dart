import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/styles.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer/app_drawer.dart';

class AppDrawerTabletPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: kAppDrawerStyle,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: AppDrawer.getDrawerOptionsList(),
            ),
          )
        ],
      ),
    );
  }
}

class AppDrawerTabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kAppDrawerStyle,
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                CircleAvatar(radius: 50.0),
                SizedBox(height: 8.0),
                Text('Lorem Ipsum'),
              ],
            ),
          ),
          Column(
            children: AppDrawer.getDrawerOptionsList(),
          ),
        ],
      ),
    );
  }
}
