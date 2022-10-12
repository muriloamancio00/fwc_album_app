import 'package:fwc_album_app/app/core/mvp/fwc_presenter.dart';
import 'package:fwc_album_app/app/pages/auth/register/view/register_view.dart';

abstract class RegisterPresenter extends FwcPresenter<RegisterView> {
//precisamos dos metodos para receber dados da tela e acessar o backend

  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String password_confirmation,
  });
}
