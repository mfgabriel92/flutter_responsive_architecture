import 'package:flutter/material.dart';

class AppDrawerOptionsMobilePortrait extends StatelessWidget {
  final String text;
  final IconData icon;

  AppDrawerOptionsMobilePortrait({
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
              SizedBox(width: 28.0),
              Text(text),
            ],
          ),
        ),
      ],
    );
  }
}

class AppDrawerOptionsMobileLandscape extends StatelessWidget {
  final IconData icon;

  AppDrawerOptionsMobileLandscape({
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
