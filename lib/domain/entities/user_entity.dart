import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
sealed class User with _$User {
  @JsonSerializable()
  const factory User.base({
    required int id,
    required String name,
    required String email,
  }) = BaseUser;

  const factory User.notLogged() = NotLoggedUser;

  @JsonSerializable()
  const factory User.logged({
    required int id,
    required String name,
    required String email,
    required String token,
    required String refreshToken,
  }) = LoggedUser;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
