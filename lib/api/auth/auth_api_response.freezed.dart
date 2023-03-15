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

SendOTPResponse _$SendOTPResponseFromJson(Map<String, dynamic> json) {
  return _SendOTPResponse.fromJson(json);
}

/// @nodoc
mixin _$SendOTPResponse {
  bool get success => throw _privateConstructorUsedError;
  @OTPConverter()
  OTP? get otp => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendOTPResponseCopyWith<SendOTPResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOTPResponseCopyWith<$Res> {
  factory $SendOTPResponseCopyWith(
          SendOTPResponse value, $Res Function(SendOTPResponse) then) =
      _$SendOTPResponseCopyWithImpl<$Res, SendOTPResponse>;
  @useResult
  $Res call({bool success, @OTPConverter() OTP? otp, String? error});
}

/// @nodoc
class _$SendOTPResponseCopyWithImpl<$Res, $Val extends SendOTPResponse>
    implements $SendOTPResponseCopyWith<$Res> {
  _$SendOTPResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? otp = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTP?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendOTPResponseCopyWith<$Res>
    implements $SendOTPResponseCopyWith<$Res> {
  factory _$$_SendOTPResponseCopyWith(
          _$_SendOTPResponse value, $Res Function(_$_SendOTPResponse) then) =
      __$$_SendOTPResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, @OTPConverter() OTP? otp, String? error});
}

/// @nodoc
class __$$_SendOTPResponseCopyWithImpl<$Res>
    extends _$SendOTPResponseCopyWithImpl<$Res, _$_SendOTPResponse>
    implements _$$_SendOTPResponseCopyWith<$Res> {
  __$$_SendOTPResponseCopyWithImpl(
      _$_SendOTPResponse _value, $Res Function(_$_SendOTPResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? otp = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_SendOTPResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTP?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendOTPResponse implements _SendOTPResponse {
  const _$_SendOTPResponse(
      {required this.success,
      @OTPConverter() required this.otp,
      required this.error});

  factory _$_SendOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SendOTPResponseFromJson(json);

  @override
  final bool success;
  @override
  @OTPConverter()
  final OTP? otp;
  @override
  final String? error;

  @override
  String toString() {
    return 'SendOTPResponse(success: $success, otp: $otp, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendOTPResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, otp, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendOTPResponseCopyWith<_$_SendOTPResponse> get copyWith =>
      __$$_SendOTPResponseCopyWithImpl<_$_SendOTPResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendOTPResponseToJson(
      this,
    );
  }
}

abstract class _SendOTPResponse implements SendOTPResponse {
  const factory _SendOTPResponse(
      {required final bool success,
      @OTPConverter() required final OTP? otp,
      required final String? error}) = _$_SendOTPResponse;

  factory _SendOTPResponse.fromJson(Map<String, dynamic> json) =
      _$_SendOTPResponse.fromJson;

  @override
  bool get success;
  @override
  @OTPConverter()
  OTP? get otp;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_SendOTPResponseCopyWith<_$_SendOTPResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ForgotPasswordResponse _$ForgotPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _ForgotPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordResponseCopyWith<ForgotPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordResponseCopyWith<$Res> {
  factory $ForgotPasswordResponseCopyWith(ForgotPasswordResponse value,
          $Res Function(ForgotPasswordResponse) then) =
      _$ForgotPasswordResponseCopyWithImpl<$Res, ForgotPasswordResponse>;
  @useResult
  $Res call({bool success, String? error});
}

/// @nodoc
class _$ForgotPasswordResponseCopyWithImpl<$Res,
        $Val extends ForgotPasswordResponse>
    implements $ForgotPasswordResponseCopyWith<$Res> {
  _$ForgotPasswordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordResponseCopyWith<$Res>
    implements $ForgotPasswordResponseCopyWith<$Res> {
  factory _$$_ForgotPasswordResponseCopyWith(_$_ForgotPasswordResponse value,
          $Res Function(_$_ForgotPasswordResponse) then) =
      __$$_ForgotPasswordResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? error});
}

/// @nodoc
class __$$_ForgotPasswordResponseCopyWithImpl<$Res>
    extends _$ForgotPasswordResponseCopyWithImpl<$Res,
        _$_ForgotPasswordResponse>
    implements _$$_ForgotPasswordResponseCopyWith<$Res> {
  __$$_ForgotPasswordResponseCopyWithImpl(_$_ForgotPasswordResponse _value,
      $Res Function(_$_ForgotPasswordResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(_$_ForgotPasswordResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForgotPasswordResponse implements _ForgotPasswordResponse {
  const _$_ForgotPasswordResponse({required this.success, required this.error});

  factory _$_ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ForgotPasswordResponseFromJson(json);

  @override
  final bool success;
  @override
  final String? error;

  @override
  String toString() {
    return 'ForgotPasswordResponse(success: $success, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordResponseCopyWith<_$_ForgotPasswordResponse> get copyWith =>
      __$$_ForgotPasswordResponseCopyWithImpl<_$_ForgotPasswordResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForgotPasswordResponseToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordResponse implements ForgotPasswordResponse {
  const factory _ForgotPasswordResponse(
      {required final bool success,
      required final String? error}) = _$_ForgotPasswordResponse;

  factory _ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$_ForgotPasswordResponse.fromJson;

  @override
  bool get success;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordResponseCopyWith<_$_ForgotPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
