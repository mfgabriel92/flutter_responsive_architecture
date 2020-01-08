import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/ui/screen_orientation_layout.dart';
import 'package:flutter_responsive_arch/ui/screen_type_layout.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer_options/app_drawer_options_mobile.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer_options/app_drawer_options_tablet.dart';

class AppDrawerOption extends StatelessWidget {
  final IconData icon;
  final String text;

  AppDrawerOption({
    this.icon,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ScreenOrientationLayout(
        portrait: AppDrawerOptionsMobilePortrait(icon: icon, text: text),
        landscape: AppDrawerOptionsMobileLandscape(icon: icon),
      ),
      tablet: ScreenOrientationLayout(
        portrait: AppDrawerOptionsTabletPortrait(icon: icon),
        landscape: AppDrawerOptionsTabletLandscape(icon: icon, text: text),
      ),
    );
  }
}
