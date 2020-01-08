import 'package:flutter/material.dart';

class AppDrawerOptionsTabletPortrait extends StatelessWidget {
  final IconData icon;

  AppDrawerOptionsTabletPortrait({
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon),
    );
  }
}

class AppDrawerOptionsTabletLandscape extends StatelessWidget {
  final String text;
  final IconData icon;

  AppDrawerOptionsTabletLandscape({
    this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Row(
            children: <Widget>[
              Icon(icon),
              SizedBox(width: 16.0),
              Text(text),
            ],
          ),
        ),
      ],
    );
  }
}
