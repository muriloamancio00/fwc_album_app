import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/helpers/loader.dart';
import 'package:fwc_album_app/app/core/ui/helpers/messages.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/widgets/button.dart';
import 'package:fwc_album_app/app/core/widgets/rounded_button.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with Loader<SplashPage>, Messages<SplashPage> {
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
            onPressed: () async {
              showLoader();

              await Future.delayed(Duration(seconds: 3));
              hideLoader();
            },
            style: ButtonStyles.i.yellowOutlineButton,
            labelStyle: context.textStyles.textSecundaryFontRegular,
            label: 'salvar',
          ),
          Button.primary(
            onPressed: () async {
              showSucess("Sucesso ao clicar");
            },
            width: MediaQuery.of(context).size.width * .9,
            height: 80,
            label: 'salvar',
          ),
          const TextField(),
          Button(
            onPressed: () {
              showError("Erro no Botão Amarelo");
            },
            style: ButtonStyles.i.yellowButton,
            labelStyle: context.textStyles.textPrimaryFontMedium,
            label: 'salvar',
          ),
          RoundedButton(
              icon: Icons.add,
              onPressed: () {
                showInfo("Botão para Adições Futuras");
              })
        ],
      )),
    );
  }
}
