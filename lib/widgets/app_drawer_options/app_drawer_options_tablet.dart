import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer_options/app_drawer_option_data_model.dart';
import 'package:flutter_responsive_arch/widgets/base_model_widget.dart';

class AppDrawerOptionsTabletPortrait extends BaseModelWidget<AppDrawerOptionDataModel> {
  @override
  Widget build(BuildContext context, AppDrawerOptionDataModel dataModel) {
    return IconButton(
      onPressed: () {},
      icon: Icon(dataModel.icon),
    );
  }
}

class AppDrawerOptionsTabletLandscape extends BaseModelWidget<AppDrawerOptionDataModel> {
  @override
  Widget build(BuildContext context, AppDrawerOptionDataModel dataModel) {
    return Column(
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Row(
            children: <Widget>[
              Icon(dataModel.icon),
              SizedBox(width: 16.0),
              Text(dataModel.text),
            ],
          ),
        ),
      ],
    );
  }
}
