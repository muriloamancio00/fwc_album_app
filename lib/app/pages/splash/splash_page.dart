import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/theme/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/theme/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/theme/styles/text_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _defaltInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: ColorsApp.i.greyDart, width: 1),
    );
    return Scaffold(
      backgroundColor: Colors.red,
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
          TextField(),
        ],
      )),
    );
  }
}
