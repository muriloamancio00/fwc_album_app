import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/widgets/button.dart';
import 'package:fwc_album_app/app/core/widgets/rounded_button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _defaltInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: ColorsApp.i.greyDart, width: 1),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Center(
          child: Column(
        children: [
          Button(
            onPressed: () {},
            style: ButtonStyles.i.yellowOutlineButton,
            labelStyle: context.textStyles.textSecundaryFontRegular,
            label: 'salvar',
          ),
          Button.primary(
            onPressed: () {},
            width: MediaQuery.of(context).size.width * .9,
            height: 80,
            label: 'salvar',
          ),
          const TextField(),
          Button(
            onPressed: () {},
            style: ButtonStyles.i.yellowButton,
            labelStyle: context.textStyles.textPrimaryFontMedium,
            label: 'salvar',
          ),
          RoundedButton(icon: Icons.add, onPressed: () {})
        ],
      )),
    );
  }
}
