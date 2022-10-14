import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'colors_app.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => 'Poppins';
  String get secundaryFont => 'MPlus1P';

  //criaçaõ dos gets

  //primary font
  TextStyle get textPrimaryFontRegular => TextStyle(
        fontWeight: FontWeight.normal,
        fontFamily: primaryFont,
      );

  TextStyle get textPrimaryFontMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: primaryFont,
      );

  TextStyle get textPrimaryFontSemiBold => TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: primaryFont,
      );

  TextStyle get textPrimaryFontBold => TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: primaryFont,
      );

  TextStyle get textPrimaryFontExtraBold => TextStyle(
        fontWeight: FontWeight.w800,
        fontFamily: primaryFont,
      );

  //secundary font

  TextStyle get textSecundaryFontRegular => TextStyle(
        fontWeight: FontWeight.normal,
        fontFamily: secundaryFont,
      );

  TextStyle get textSecundaryFontMedium => TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: secundaryFont,
      );

  TextStyle get textSecundaryFontBold => TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: secundaryFont,
      );

  TextStyle get textSecundaryFontExtraBold => TextStyle(
        fontWeight: FontWeight.w800,
        fontFamily: secundaryFont,
      );

  TextStyle get labelTextField => textSecundaryFontRegular.copyWith(
        color: ColorsApp.i.greyDart,
      );

  TextStyle get textSecundaryFontExtraBoldPrimaryColor =>
      textSecundaryFontExtraBoldPrimaryColor.copyWith(
        color: ColorsApp.i.primary,
      );

  TextStyle get titleWhite =>
      textPrimaryFontBold.copyWith(color: Colors.white, fontSize: 22);

  TextStyle get titleBlack =>
      textPrimaryFontBold.copyWith(color: Colors.black, fontSize: 22);
}

// cria a extensao das color dentro do contexto
extension TextStylesExtensions on BuildContext {
  TextStyles get textStyles => TextStyles.i;
}
