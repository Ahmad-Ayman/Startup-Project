import 'package:flutter/material.dart';

import 'enums.dart';

extension EmptyPadding on num {
  SizedBox get ph => SizedBox(
        height: toDouble(),
      );
  SizedBox get pw => SizedBox(
        width: toDouble(),
      );
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension FontFamilyTypeExtension on FontFamilyType {
  String fontFamilyString() {
    switch (this) {
      case FontFamilyType.fontRegular:
        return 'fontRegular';
      case FontFamilyType.fontBold:
        return 'fontBold';
      case FontFamilyType.fontMedium:
        return 'fontMedium';
      case FontFamilyType.fontLight:
        return 'fontLight';
      case FontFamilyType.fontSemiBold:
        return 'fontSemiBold';
    }
  }
}
