import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/theme/styles/button_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          //risco preto em baixo da appBar
          elevation: 0,
          //centrali\zação da appBar
          centerTitle: true,
          //botao de voltar
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      child: Scaffold(
        //backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Splash Page'),
        ),
        body: Center(
            child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyles.i.yellowButton,
              child: Text('salvar'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyles.i.yellowOutlineButton,
              child: Text('salvar'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyles.i.primaryButton,
              child: Text('salvar'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyles.i.primaryOutlineButton,
              child: Text('salvar'),
            ),
          ],
        )),
      ),
    );
  }
}
