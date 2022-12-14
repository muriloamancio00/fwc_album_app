import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/helpers/loader.dart';
import 'package:fwc_album_app/app/core/ui/helpers/messages.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';
import 'package:fwc_album_app/app/core/ui/widgets/rounded_button.dart';
import 'package:fwc_album_app/app/pages/splash/presenter/splash_presenter.dart';
import 'package:fwc_album_app/app/pages/splash/view/splash_view_impl.dart';

class SplashPage extends StatefulWidget {
  //aqui precisa receber a presenter no nosso construtor
  final SplashPresenter presenter;

  const SplashPage({super.key, required this.presenter});
  //dps verificar associação entre presenter e view ,  na splash_view)impl

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends SplashViewImpl {
  @override
  Widget build(BuildContext context) {
    var _defaltInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: ColorsApp.i.greyDart, width: 1),
    );
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        //usamos a STACK para posicionar as imagens em lugares especificos
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .08),
                child: Image.asset(
                  'assets/images/fifa_logo.png',
                  height: MediaQuery.of(context).size.height * .25,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 171),
                child: Button(
                    width: MediaQuery.of(context).size.width * .9,
                    onPressed: () async {
                      widget.presenter.checkLogin();
                    },
                    style: context.buttonStyles.yellowButton,
                    labelStyle:
                        context.textStyles.textSecundaryFontExtraBold.copyWith(
                      color: ColorsApp.i.primary,
                    ),
                    label: 'Acessar'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Image.asset('assets/images/bandeiras.png')),
            ),
          ],
        ),
      ),
    );
  }
}
