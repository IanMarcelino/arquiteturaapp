import 'dart:async';

import 'package:arquiteturaapp/data/repositories/auth/auth_repository.dart';
import 'package:arquiteturaapp/data/services/auth/auth_client_http.dart';
import 'package:arquiteturaapp/data/services/auth/auth_local_storage.dart';
import 'package:arquiteturaapp/domain/dtos/credentials.dart';
import 'package:arquiteturaapp/domain/entities/user_entity.dart';
import 'package:arquiteturaapp/domain/validators/credentials_validator.dart';
import 'package:result_dart/result_dart.dart';
import 'package:result_dart/src/types.dart';
import 'package:result_dart/src/unit.dart';

class RemoteAuthRepository implements AuthRepository{

  RemoteAuthRepository(this._authLocalStorage, this._authClientHttp);

  final AuthClientHttp _authClientHttp;
  final AuthLocalStorage _authLocalStorage;
  final _streamController = StreamController<User>.broadcast();

  @override
  AsyncResult<LoggedUser> getUser() {
    return _authLocalStorage.getUser();
  }

  @override
  AsyncResult<LoggedUser> login(Credentials credentials) async {
    final validator = CredentialsValidator();

    if(!validator.validate(credentials).isValid){
      return Failure(Exception('Invalid credentials'));
    }

    return _authClientHttp//
    .login(credentials)
    .flatMap(_authLocalStorage.saveUser)
    .onSuccess(_streamController.add);
  }

  @override
  AsyncResult<Unit> logout() {
    return _authLocalStorage.removeUser().onSuccess(
      (_) => _streamController.add(const NotLoggedUser()),
    );
  }

  @override
  Stream<User> userObserver() {
    return _streamController.stream;
  }
  
  @override
  void dispose() {
    _streamController.close();
  }

}