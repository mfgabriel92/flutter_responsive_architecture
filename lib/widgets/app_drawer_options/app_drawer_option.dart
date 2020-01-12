import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/ui/screen_orientation_layout.dart';
import 'package:flutter_responsive_arch/ui/screen_type_layout.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer_options/app_drawer_option_data_model.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer_options/app_drawer_options_mobile.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer_options/app_drawer_options_tablet.dart';
import 'package:provider/provider.dart';

class AppDrawerOption extends StatelessWidget {
  final IconData icon;
  final String text;

  AppDrawerOption({
    this.icon,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: AppDrawerOptionDataModel(text: text, icon: icon),
      child: ScreenTypeLayout(
        mobile: ScreenOrientationLayout(
          portrait: (context) => AppDrawerOptionsMobilePortrait(),
          landscape: (context) => AppDrawerOptionsMobileLandscape(),
        ),
        tablet: ScreenOrientationLayout(
          portrait: (context) => AppDrawerOptionsTabletPortrait(),
          landscape: (context) => AppDrawerOptionsTabletLandscape(),
        ),
      ),
    );
  }
}
