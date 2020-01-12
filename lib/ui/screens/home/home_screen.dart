import 'package:flutter/material.dart';
import 'package:flutter_responsive_arch/ui/screen_orientation_layout.dart';
import 'package:flutter_responsive_arch/ui/screen_type_layout.dart';
import 'package:flutter_responsive_arch/ui/screens/home/home_screen_mobile.dart';
import 'package:flutter_responsive_arch/ui/screens/home/home_screen_tablet.dart';
import 'package:flutter_responsive_arch/ui/screens/home/home_screen_viewmodel.dart';
import 'package:flutter_responsive_arch/widgets/base_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeScreenViewModel>(
      model: HomeScreenViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context) => ScreenTypeLayout(
        mobile: ScreenOrientationLayout(
          portrait: (context) => HomeScreenMobilePortrait(),
          landscape: (context) => HomeScreenMobileLandscape(),
        ),
        tablet: ScreenOrientationLayout(
          portrait: (context) => HomeScreenTabletPortrait(),
          landscape: (context) => HomeScreenTabletLandscape(),
        ),
      ),
    );
  }
}
