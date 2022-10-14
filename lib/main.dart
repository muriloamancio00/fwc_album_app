import 'package:flutter/material.dart';
import 'package:fwc_album_app/fwc_album_app.dart';

import 'app/core/config/env/env.dart';

Future<void> main() async {
  //carregamento dos arquivos antes de startar tudo
  // ignore: await_only_futures
  await Env.i.load();
  runApp(const FwcAlbumApp());
}
