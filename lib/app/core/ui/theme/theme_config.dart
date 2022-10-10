import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';

class ThemeConfig {
  ThemeConfig._();

  static final _defaltInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: BorderSide(color: ColorsApp.i.greyDart, width: 1),
  );

  static final theme = ThemeData(
    backgroundColor: Colors.red,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        //risco preto em baixo da appBar
        elevation: 0,
        //centrali\zação da appBar
        centerTitle: true,
        //botao de voltar
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: TextStyles.i.textPrimaryFontBold
            .copyWith(color: Colors.black, fontSize: 18)),
    primaryColor: ColorsApp.i.primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.i.primary,
      primary: ColorsApp.i.primary,
      secondary: ColorsApp.i.secundary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      //mantem o tema como branco
      fillColor: Colors.white,
      // filled é necessario
      filled: true,
      //diminuir a densidade
      isDense: true,
      //aumentar um pouco o espaço interno
      contentPadding: const EdgeInsets.all(13),
      border: _defaltInputBorder,
      enabledBorder: _defaltInputBorder,
      focusedBorder: _defaltInputBorder,
      labelStyle: TextStyles.i.labelTextField,
    ),
  );
}
