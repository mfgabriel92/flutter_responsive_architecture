import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/ui/screen_orientation_layout.dart';
import 'package:flutter_responsive_arch/ui/screen_type_layout.dart';
import 'package:flutter_responsive_arch/ui/screens/home/home_screen_mobile.dart';
import 'package:flutter_responsive_arch/ui/screens/home/home_screen_tablet.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ScreenOrientationLayout(
        portrait: HomeScreenMobilePortrait(),
        landscape: HomeScreenMobileLandscape(),
      ),
      tablet: HomeScreenTablet(),
    );
  }
}
