import 'package:flutter/widgets.dart';
import 'package:fwc_album_app/app/core/ui/helpers/loader.dart';
import 'package:fwc_album_app/app/pages/splash/splash_page.dart';
import 'package:fwc_album_app/app/pages/splash/view/splash_view.dart';

abstract class SplashViewImpl extends State<SplashPage>
    with Loader<SplashPage>
    implements SplashView {
  //desse jeito n preciso mais implemetnar o showloader, pois esse cara vamos extender na view dps
  //a classe sendo abstrata nao precisamos colocar os metodos n implementados
  @override
  void initState() {
    widget.presenter.view = this;
    //tela view e presente lincados e podem conersar por meio das instancias
    super.initState();
  }

  @override
  void logged(bool isLogged) {
    hideLoader();
    if (isLogged) {
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
    } else {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/auth/login', (route) => false);
    }
  }
}
