import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static Env? _instance;
  // Avoid self isntance
  Env._();
  static Env get i {
    _instance ??= Env._();
    return _instance!;
  }

  Future<void> load() => dotenv.load(fileName: '.env');

  //metodo tipo operador, onde a chave é um String key, e dentro dele buscamos a chave do env
  String? operator [](String key) => dotenv.env[key];
  //se eu quiser mudar o dotenv por um remote config do firebase é só trocar essa casse.
}
