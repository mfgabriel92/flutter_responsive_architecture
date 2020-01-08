import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer/app_drawer.dart';

class HomeScreenMobilePortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
          icon: Icon(Icons.menu),
        ),
        title: Text('Flutter'),
      ),
    );
  }
}

class HomeScreenMobileLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Row(
        children: <Widget>[
          AppDrawer(),
        ],
      ),
    );
  }
}
