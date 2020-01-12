import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer_options/app_drawer_option_data_model.dart';
import 'package:flutter_responsive_arch/widgets/base_model_widget.dart';

class AppDrawerOptionsMobilePortrait extends BaseModelWidget<AppDrawerOptionDataModel> {
  @override
  Widget build(BuildContext context, AppDrawerOptionDataModel dataModel) {
    return Column(
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Row(
            children: <Widget>[
              Icon(dataModel.icon),
              SizedBox(width: 28.0),
              Text(dataModel.text),
            ],
          ),
        ),
      ],
    );
  }
}

class AppDrawerOptionsMobileLandscape extends BaseModelWidget<AppDrawerOptionDataModel> {
  @override
  Widget build(BuildContext context, AppDrawerOptionDataModel dataModel) {
    return IconButton(
      onPressed: () {},
      icon: Icon(dataModel.icon),
    );
  }
}
