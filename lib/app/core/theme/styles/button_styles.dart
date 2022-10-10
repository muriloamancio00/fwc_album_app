import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/theme/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/theme/styles/text_styles.dart';

class ButtonStyles {
  static ButtonStyles? _instance;

  ButtonStyles._();

  static ButtonStyles get i {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get yellowButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.i.yellow,
      //bordas arredondadas, permite border radius
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle:
          //copyWith, permite mudar padroes dentro da instancia, alterando e salvando em cima
          TextStyles.i.textSecundaryFontExtraBold.copyWith(
        fontSize: 14,
        // muda na hora de ultilizar o buttom => color: Colors.black,
      ));

//botao vazado -> outline
  ButtonStyle get yellowOutlineButton => OutlinedButton.styleFrom(
      //bordas arredondadas, permite border radius
      //backgroundColor: ColorsApp.i.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      side: BorderSide(
        color: ColorsApp.i.yellow,
      ),
      textStyle:
          //copyWith, permite mudar padroes dentro da instancia, alterando e salvando em cima
          TextStyles.i.textSecundaryFontExtraBold.copyWith(
        fontSize: 14,
      ));

//botao com cor primary
  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.i.primary,
      //bordas arredondadas, permite border radius
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle:
          //copyWith, permite mudar padroes dentro da instancia, alterando e salvando em cima
          TextStyles.i.textSecundaryFontExtraBold.copyWith(
        fontSize: 14,
        // muda na hora de ultilizar o buttom => color: Colors.black,
      ));

  ButtonStyle get primaryOutlineButton => OutlinedButton.styleFrom(
      //bordas arredondadas, permite border radius
      //backgroundColor: ColorsApp.i.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      side: BorderSide(
        color: ColorsApp.i.primary,
      ),
      textStyle:
          //copyWith, permite mudar padroes dentro da instancia, alterando e salvando em cima
          TextStyles.i.textSecundaryFontExtraBold.copyWith(
        fontSize: 14,
      ));
}

extension ButtonStylesExtens on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.i;
}
