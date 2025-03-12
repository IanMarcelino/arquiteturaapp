import 'package:arquiteturaapp/data/repositories/auth/auth_repository.dart';
import 'package:arquiteturaapp/data/repositories/auth/remote_auth_repository.dart';
import 'package:arquiteturaapp/data/services/auth/auth_client_http.dart';
import 'package:arquiteturaapp/data/services/auth/auth_local_storage.dart';
import 'package:arquiteturaapp/data/services/client_http.dart';
import 'package:arquiteturaapp/data/services/local_storage.dart';
import 'package:auto_injector/auto_injector.dart';

final injector = AutoInjector();

setupDependencies(){
  injector.addSingleton<AuthRepository>(RemoteAuthRepository.new);
  injector.addSingleton(ClientHttp.new);
  injector.addSingleton(LocalStorage.new);
  injector.addSingleton(AuthClientHttp.new);
  injector.addSingleton(AuthLocalStorage.new);

}