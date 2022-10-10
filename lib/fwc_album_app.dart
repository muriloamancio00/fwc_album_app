import 'package:flutter/material.dart';

class FwcAlbumApp extends StatelessWidget {
  const FwcAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fifa World Cup',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => Container(),
      },
    );
  }
}
