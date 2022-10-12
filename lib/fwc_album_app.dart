import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:fwc_album_app/app/core/rest/custom_dio.dart';
import 'package:fwc_album_app/app/core/ui/theme/theme_config.dart';
import 'package:fwc_album_app/app/pages/auth/register/register_route.dart';
import 'package:fwc_album_app/app/pages/splash/home/home_page.dart';
import 'package:fwc_album_app/app/pages/auth/login/login_page.dart';
import 'package:fwc_album_app/app/pages/auth/register/register_page.dart';
import 'package:fwc_album_app/app/pages/splash/presenter/splash_presenter_impl.dart';
import 'package:fwc_album_app/app/pages/splash/splash_page.dart';
import 'package:fwc_album_app/app/pages/splash/splash_route.dart';
import 'package:fwc_album_app/app/repository/auth/auth_repository.dart';
import 'package:fwc_album_app/app/repository/auth/auth_repository_impl.dart';

class FwcAlbumApp extends StatelessWidget {
  const FwcAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        //nossa instancia global disponivel pela aplicação
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        //callabou class i() -> pesquisar
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i()))
      ],
      child: MaterialApp(
        title: 'Fifa World Cup',
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          '/': (_) => SplashRoute(),
          '/auth/login': (_) => const LoginPage(),
          //agora RegisterPage precisa ser uma rota do getit
          '/auth/register': (_) => const RegisterRoute(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
