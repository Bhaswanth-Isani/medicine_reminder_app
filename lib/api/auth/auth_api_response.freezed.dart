// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserApiResponse _$UserApiResponseFromJson(Map<String, dynamic> json) {
  return _UserApiResponse.fromJson(json);
}

/// @nodoc
mixin _$UserApiResponse {
  bool get success => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserApiResponseCopyWith<UserApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserApiResponseCopyWith<$Res> {
  factory $UserApiResponseCopyWith(
          UserApiResponse value, $Res Function(UserApiResponse) then) =
      _$UserApiResponseCopyWithImpl<$Res, UserApiResponse>;
  @useResult
  $Res call({bool success, User? user, String? token, String? error});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserApiResponseCopyWithImpl<$Res, $Val extends UserApiResponse>
    implements $UserApiResponseCopyWith<$Res> {
  _$UserApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? user = freezed,
    Object? token = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserApiResponseCopyWith<$Res>
    implements $UserApiResponseCopyWith<$Res> {
  factory _$$_UserApiResponseCopyWith(
          _$_UserApiResponse value, $Res Function(_$_UserApiResponse) then) =
      __$$_UserApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, User? user, String? token, String? error});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserApiResponseCopyWithImpl<$Res>
    extends _$UserApiResponseCopyWithImpl<$Res, _$_UserApiResponse>
    implements _$$_UserApiResponseCopyWith<$Res> {
  __$$_UserApiResponseCopyWithImpl(
      _$_UserApiResponse _value, $Res Function(_$_UserApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? user = freezed,
    Object? token = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_UserApiResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserApiResponse implements _UserApiResponse {
  const _$_UserApiResponse(
      {required this.success,
      required this.user,
      required this.token,
      required this.error});

  factory _$_UserApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserApiResponseFromJson(json);

  @override
  final bool success;
  @override
  final User? user;
  @override
  final String? token;
  @override
  final String? error;

  @override
  String toString() {
    return 'UserApiResponse(success: $success, user: $user, token: $token, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserApiResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, user, token, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserApiResponseCopyWith<_$_UserApiResponse> get copyWith =>
      __$$_UserApiResponseCopyWithImpl<_$_UserApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserApiResponseToJson(
      this,
    );
  }
}

abstract class _UserApiResponse implements UserApiResponse {
  const factory _UserApiResponse(
      {required final bool success,
      required final User? user,
      required final String? token,
      required final String? error}) = _$_UserApiResponse;

  factory _UserApiResponse.fromJson(Map<String, dynamic> json) =
      _$_UserApiResponse.fromJson;

  @override
  bool get success;
  @override
  User? get user;
  @override
  String? get token;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_UserApiResponseCopyWith<_$_UserApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
