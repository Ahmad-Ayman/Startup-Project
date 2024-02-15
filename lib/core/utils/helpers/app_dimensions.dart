import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDimensions {
  static ScreenUtil screenUtil = ScreenUtil();

  static Size designSize = const Size(430, 950);
  static double? width;
  static double? height;
  static double textHeight = 1.8;

  static double tabletMinimumWidth = 700;
  // double closeIconSize = 16;
  static double get screenPadding => w(18.0);
  static double get buttonHeight => h(60);
  static double get appBarHeight => h(120);
  // late double navBarHeight;
  static double get navBarHeight => h(110);

  static double cardBorderRadius = 20;
  static double get getFonTSize14 {
    return h(14);
  }

  static double get getFonTSize15 {
    return h(15);
  }

  static double get getFonTSize16 {
    return h(16);
  }

  static double get getHelperFonTSize {
    return h(16);
  }

  static double get getFonTSize18 {
    return h(18);
  }

  static double get getFonTSize20 {
    return h(20);
  }

  static double get getFonTSize22 {
    return h(22);
  }

  static double get getFonTSize24 {
    return h(24);
  }

  static double get getFonTSize26 {
    return h(26);
  }

  static double get getFonTSize30 {
    return h(30);
  }

  static double get getFonTSize34 {
    return h(34);
  }

  static double get getFonTSize38 {
    return h(38);
  }

  static double textFieldHeight(double helperTextFontSize) {
    return h(58) + helperTextFontSize * textHeight;
  }

  static double h(double value) {
    return (value / designSize.height) * screenUtil.screenHeight;
  }

  static double w(double value) {
    return (value / designSize.width) * screenUtil.screenWidth;
  }

  static double fh() {
    return screenUtil.screenHeight;
  }

  static double fw() {
    return screenUtil.screenWidth;
  }

  static double deviceHeight(double mobileHeight, double tabletHeight) {
    return fw() > tabletMinimumWidth ? tabletHeight : mobileHeight;
  }

  availableScreenHeight(context) {
    final media = MediaQuery.sizeOf(context);
    final padding = MediaQuery.paddingOf(context);
    return (height ?? media.height) -
        (AppBar().preferredSize.height + padding.top);
  }
}