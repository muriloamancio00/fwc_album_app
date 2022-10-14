import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fwc_album_app/app/core/exceptions/repository_exception.dart';
import 'package:fwc_album_app/app/core/exceptions/unauthorized_exception.dart';
import 'package:fwc_album_app/app/models/register_user_model.dart';

import '../../core/rest/custom_dio.dart';
import './auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final CustomDio dio;

  AuthRepositoryImpl({required this.dio});

  //camada responsavel por receber os metodos do backend
  @override
  Future<String> login({required String email, required password}) async {
    try {
      final result = await dio.post('/api/auth', data: {
        'email': email,
        'password': password,
      });

      final accessToken = result.data['acess_token'];

      if (accessToken == null) {
        throw UnauthorizedException();
      }

      //caminho feliz recebendo o token do backend
      return accessToken;
    } on DioError catch (e, s) {
      log('Erro ao realizar login', error: e, stackTrace: s);
      //401 é o acesso negado
      if (e.response?.statusCode == 401) {
        throw UnauthorizedException();
      }
      throw RepositoryException(message: 'Erro ao realizar login');
    }
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> register(RegisterUserModel registerModel) async {
    //data: registerModel.toMap() -> gera nosso arquivo JSON como precisamos
    try {
      await dio.unAuth().post(
            '/api/register',
            data: registerModel.toMap(),
          );
    } on DioError catch (e, s) {
      log('Error registering user', error: e, stackTrace: s);
      throw RepositoryException(message: 'Error registering user');
    }
  }
}
