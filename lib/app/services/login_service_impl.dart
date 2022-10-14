import 'package:fwc_album_app/app/repository/auth/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './login_service.dart';

class LoginServiceImpl implements LoginService {
  final AuthRepository authRepository;

  LoginServiceImpl({required this.authRepository});

  @override
  Future<void> execute(
      {required String email, required String password}) async {
    //recebemos nosso accessToken para passar para nosso authRepository
    final accessToken =
        await authRepository.login(email: email, password: password);
    //se deu certo guardamos no sharedPreferences que necessita o await
    final sp = await SharedPreferences.getInstance();
    sp.setString('accessToken', accessToken);
  }
}
