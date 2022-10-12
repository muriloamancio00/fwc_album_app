import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/theme/theme_config.dart';
import 'package:fwc_album_app/app/pages/splash/home/home_page.dart';
import 'package:fwc_album_app/app/pages/splash/login/login_page.dart';
import 'package:fwc_album_app/app/pages/splash/presenter/splash_presenter_impl.dart';
import 'package:fwc_album_app/app/pages/splash/splash_page.dart';
import 'package:fwc_album_app/app/pages/splash/splash_route.dart';

class FwcAlbumApp extends StatelessWidget {
  const FwcAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fifa World Cup',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      routes: {
        '/': (_) => SplashRoute(),
        '/auth/login': (_) => const LoginPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
