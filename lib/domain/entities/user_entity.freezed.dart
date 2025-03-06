// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
User _$UserFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'base':
          return BaseUser.fromJson(
            json
          );
                case 'notLogged':
          return NotLoggedUser.fromJson(
            json
          );
                case 'logged':
          return LoggedUser.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'User',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$User {



  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'User()';
}


}

/// @nodoc
class $UserCopyWith<$Res>  {
$UserCopyWith(User _, $Res Function(User) __);
}


/// @nodoc

@JsonSerializable()
class BaseUser implements User {
  const BaseUser({required this.id, required this.name, required this.email, final  String? $type}): $type = $type ?? 'base';
  factory BaseUser.fromJson(Map<String, dynamic> json) => _$BaseUserFromJson(json);

 final  int id;
 final  String name;
 final  String email;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseUserCopyWith<BaseUser> get copyWith => _$BaseUserCopyWithImpl<BaseUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email);

@override
String toString() {
  return 'User.base(id: $id, name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class $BaseUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $BaseUserCopyWith(BaseUser value, $Res Function(BaseUser) _then) = _$BaseUserCopyWithImpl;
@useResult
$Res call({
 int id, String name, String email
});




}
/// @nodoc
class _$BaseUserCopyWithImpl<$Res>
    implements $BaseUserCopyWith<$Res> {
  _$BaseUserCopyWithImpl(this._self, this._then);

  final BaseUser _self;
  final $Res Function(BaseUser) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,}) {
  return _then(BaseUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class NotLoggedUser implements User {
  const NotLoggedUser({final  String? $type}): $type = $type ?? 'notLogged';
  factory NotLoggedUser.fromJson(Map<String, dynamic> json) => _$NotLoggedUserFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$NotLoggedUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotLoggedUser);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'User.notLogged()';
}


}




/// @nodoc

@JsonSerializable()
class LoggedUser implements User {
  const LoggedUser({required this.id, required this.name, required this.email, required this.token, required this.refreshToken, final  String? $type}): $type = $type ?? 'logged';
  factory LoggedUser.fromJson(Map<String, dynamic> json) => _$LoggedUserFromJson(json);

 final  int id;
 final  String name;
 final  String email;
 final  String token;
 final  String refreshToken;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoggedUserCopyWith<LoggedUser> get copyWith => _$LoggedUserCopyWithImpl<LoggedUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoggedUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoggedUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.token, token) || other.token == token)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,token,refreshToken);

@override
String toString() {
  return 'User.logged(id: $id, name: $name, email: $email, token: $token, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class $LoggedUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $LoggedUserCopyWith(LoggedUser value, $Res Function(LoggedUser) _then) = _$LoggedUserCopyWithImpl;
@useResult
$Res call({
 int id, String name, String email, String token, String refreshToken
});




}
/// @nodoc
class _$LoggedUserCopyWithImpl<$Res>
    implements $LoggedUserCopyWith<$Res> {
  _$LoggedUserCopyWithImpl(this._self, this._then);

  final LoggedUser _self;
  final $Res Function(LoggedUser) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? token = null,Object? refreshToken = null,}) {
  return _then(LoggedUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
