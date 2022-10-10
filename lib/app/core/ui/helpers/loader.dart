import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

//podems forcar onde vamos adicionar a classe
//mixin que so pode ser aplicado dentro do estado
//sendo assim ele tem q extender de um State

//usando o on, criaos meio q ua herança podendo usar tudo do State

mixin Loader<T extends StatefulWidget> on State<T> {
  var isOpen = false;

  void showLoader() {
    if (!isOpen) {
      isOpen = true;
      showDialog(
          context: context,
          builder: (_) {
            return LoadingAnimationWidget.threeArchedCircle(
                color: Colors.white, size: 60);
          });
    }
  }

  void hideLoader() {
    if (isOpen) {
      isOpen = false;
      Navigator.of(context).pop();
    }
  }
}
