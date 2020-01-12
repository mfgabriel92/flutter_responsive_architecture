import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/ui/screens/home/home_screen_viewmodel.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer/app_drawer.dart';
import 'package:flutter_responsive_arch/widgets/base_model_widget.dart';

class HomeScreenTabletPortrait extends BaseModelWidget<HomeScreenViewModel> {
  @override
  Widget build(BuildContext context, HomeScreenViewModel model) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Center(
            child: Text(model.text),
          )),
          AppDrawer(),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 60.0),
        child: FloatingActionButton(
          onPressed: () => model.increment(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class HomeScreenTabletLandscape extends BaseModelWidget<HomeScreenViewModel> {
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
