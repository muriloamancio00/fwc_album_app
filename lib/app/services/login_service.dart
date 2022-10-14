//UMA regra de negocio -> login
abstract class LoginService {
  Future<void> execute({required String email, required String password});
}
