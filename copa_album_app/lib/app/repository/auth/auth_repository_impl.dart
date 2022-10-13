import 'dart:developer';

import 'package:copa_album_app/app/core/exceptions/repository_exception.dart';
import 'package:copa_album_app/app/core/rest/custom_dio.dart';
import 'package:copa_album_app/app/models/register_user_model.dart';
import 'package:copa_album_app/app/repository/auth/auth_repository.dart';
import 'package:dio/dio.dart';

class AuthRepositoryImpl implements AuthRepository {
  final CustomDio dio;

  AuthRepositoryImpl({required this.dio});

  @override
  Future<String> login({required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> register(RegisterUserModel registerUserModel) async {
    try {
      await dio.unAuth().post('/api/register', data: registerUserModel.toMap());
    } on DioError catch (e, s) {
      log('Erro ao registrar usuário', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao registrar o usuário');
    }
  }
}
