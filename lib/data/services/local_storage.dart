import 'package:arquiteturaapp/data/exceptions/exceptions.dart';
import 'package:result_dart/result_dart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  AsyncResult<String> saveData(String key, String value) async {
    try {
      final shared = await SharedPreferences.getInstance();
      shared.setString(key, value);
      return Success(value);
    } catch (e, s) {
      return Failure(LocalStorageException(e.toString(),s));
    }
  }

  AsyncResult<String> getData(String key) async {
      try {
      final shared = await SharedPreferences.getInstance();
      final value = shared.getString(key);
      return value != null ? Success(value) : Failure(LocalStorageException('Key not found'));
    } catch (e, s) {
      return Failure(LocalStorageException(e.toString(),s));
    }
  }

  AsyncResult<Unit> removeData(String key) async {
      try {
      final shared = await SharedPreferences.getInstance();
      shared.remove(key);
      return Success(unit);
    } catch (e, s) {
      return Failure(LocalStorageException(e.toString(),s));
    }
  }
}