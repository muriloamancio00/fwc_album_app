//aqui na classe guardaremos as cores do nosso APP
import 'package:flutter/widgets.dart';

class ColorsApp {
  //dentro da classe guardamos a instancia da classe
  static ColorsApp? _instance;

  ColorsApp._();

  //o construtor dela nao existe
  static ColorsApp get i {
    //  ''se a instance for nulo '??' entao receba '=' .. ??=''
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0XFF791435);
  Color get secundary => const Color(0XFFFDCE50);
  Color get yellow => const Color(0XFFFDCE50);
  Color get grey => const Color(0XFFCCCCCC);
  Color get greyDart => const Color(0XFF999999);
}

// cria a extensao das color dentro do contexto
extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
