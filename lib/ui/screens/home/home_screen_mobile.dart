import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/ui/screens/home/home_screen_viewmodel.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer/app_drawer.dart';
import 'package:flutter_responsive_arch/widgets/base_model_widget.dart';

class HomeScreenMobilePortrait extends BaseModelWidget<HomeScreenViewModel> {
  @override
  Widget build(BuildContext context, HomeScreenViewModel model) {
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
      body: Center(
        child: Text(model.text),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => model.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}

class HomeScreenMobileLandscape extends BaseModelWidget<HomeScreenViewModel> {
  @override
  Widget build(BuildContext context, HomeScreenViewModel model) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          AppDrawer(),
          Expanded(
            child: Center(
              child: Text(model.text),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => model.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}
