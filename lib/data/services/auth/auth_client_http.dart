import 'package:arquiteturaapp/data/services/client_http.dart';
import 'package:arquiteturaapp/domain/dtos/credentials.dart';
import 'package:arquiteturaapp/domain/entities/user_entity.dart';
import 'package:result_dart/result_dart.dart';

class AuthClientHttp {

  final ClientHttp _clientHttp;

  AuthClientHttp(this._clientHttp);

  AsyncResult<LoggedUser> login(Credentials credentials) async {
    final response = await _clientHttp.post('/login', {
      'email': credentials.email, 'password': credentials.password
      });
    return response.map((response) => LoggedUser.fromJson(response.data));
  } 


}