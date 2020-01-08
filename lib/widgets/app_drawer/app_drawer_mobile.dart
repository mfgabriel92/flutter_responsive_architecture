import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/styles.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer/app_drawer.dart';

class AppDrawerMobilePortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    return Container(
      width: orientation == Orientation.portrait ? 250.0 : 75.0,
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

class AppDrawerMobileLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    return Container(
      width: orientation == Orientation.portrait ? 250.0 : 75.0,
      decoration: kAppDrawerStyle,
      child: Column(
        children: <Widget>[
          SizedBox(height: 8.0),
          CircleAvatar(radius: 20.0),
          SizedBox(height: 8.0),
          Column(
            children: AppDrawer.getDrawerOptionsList(),
          ),
        ],
      ),
    );
  }
}
