import 'package:fwc_album_app/app/core/mvp/fwc_presenter.dart';

abstract class SplashPresenter extends FwcPresenter {
  //metodos disponiuveis para nossa tela chamar
  //nossa tela so vai chamar esses metodos especificos
  Future<void> checkLogin();
}
