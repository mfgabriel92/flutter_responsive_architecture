import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/ui/screen_orientation_layout.dart';
import 'package:flutter_responsive_arch/ui/screen_type_layout.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer/app_drawer_mobile.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer/app_drawer_tablet.dart';
import 'package:flutter_responsive_arch/widgets/app_drawer_options/app_drawer_option.dart';

class AppDrawer extends StatelessWidget {
  static List<Widget> getDrawerOptionsList() {
    return [
      AppDrawerOption(
        icon: Icons.home,
        text: 'Home',
      ),
      AppDrawerOption(
        icon: Icons.label,
        text: 'Categories',
      ),
      AppDrawerOption(
        icon: Icons.person,
        text: 'Users',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ScreenOrientationLayout(
        portrait: (context) => AppDrawerMobilePortrait(),
        landscape: (context) => AppDrawerMobileLandscape(),
      ),
      tablet: ScreenOrientationLayout(
        portrait: (context) => AppDrawerTabletPortrait(),
        landscape: (context) => AppDrawerTabletLandscape(),
      ),
    );
  }
}
