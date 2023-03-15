// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_api_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAccountInput _$CreateAccountInputFromJson(Map<String, dynamic> json) {
  return _CreateAccountInput.fromJson(json);
}

/// @nodoc
mixin _$CreateAccountInput {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAccountInputCopyWith<CreateAccountInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountInputCopyWith<$Res> {
  factory $CreateAccountInputCopyWith(
          CreateAccountInput value, $Res Function(CreateAccountInput) then) =
      _$CreateAccountInputCopyWithImpl<$Res, CreateAccountInput>;
  @useResult
  $Res call({String username, String email, String password});
}

/// @nodoc
class _$CreateAccountInputCopyWithImpl<$Res, $Val extends CreateAccountInput>
    implements $CreateAccountInputCopyWith<$Res> {
  _$CreateAccountInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateAccountInputCopyWith<$Res>
    implements $CreateAccountInputCopyWith<$Res> {
  factory _$$_CreateAccountInputCopyWith(_$_CreateAccountInput value,
          $Res Function(_$_CreateAccountInput) then) =
      __$$_CreateAccountInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String email, String password});
}

/// @nodoc
class __$$_CreateAccountInputCopyWithImpl<$Res>
    extends _$CreateAccountInputCopyWithImpl<$Res, _$_CreateAccountInput>
    implements _$$_CreateAccountInputCopyWith<$Res> {
  __$$_CreateAccountInputCopyWithImpl(
      _$_CreateAccountInput _value, $Res Function(_$_CreateAccountInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_CreateAccountInput(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateAccountInput implements _CreateAccountInput {
  const _$_CreateAccountInput(
      {required this.username, required this.email, required this.password});

  factory _$_CreateAccountInput.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAccountInputFromJson(json);

  @override
  final String username;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'CreateAccountInput(username: $username, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAccountInput &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAccountInputCopyWith<_$_CreateAccountInput> get copyWith =>
      __$$_CreateAccountInputCopyWithImpl<_$_CreateAccountInput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateAccountInputToJson(
      this,
    );
  }
}

abstract class _CreateAccountInput implements CreateAccountInput {
  const factory _CreateAccountInput(
      {required final String username,
      required final String email,
      required final String password}) = _$_CreateAccountInput;

  factory _CreateAccountInput.fromJson(Map<String, dynamic> json) =
      _$_CreateAccountInput.fromJson;

  @override
  String get username;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_CreateAccountInputCopyWith<_$_CreateAccountInput> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginInput _$LoginInputFromJson(Map<String, dynamic> json) {
  return _LoginInput.fromJson(json);
}

/// @nodoc
mixin _$LoginInput {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginInputCopyWith<LoginInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginInputCopyWith<$Res> {
  factory $LoginInputCopyWith(
          LoginInput value, $Res Function(LoginInput) then) =
      _$LoginInputCopyWithImpl<$Res, LoginInput>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginInputCopyWithImpl<$Res, $Val extends LoginInput>
    implements $LoginInputCopyWith<$Res> {
  _$LoginInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginInputCopyWith<$Res>
    implements $LoginInputCopyWith<$Res> {
  factory _$$_LoginInputCopyWith(
          _$_LoginInput value, $Res Function(_$_LoginInput) then) =
      __$$_LoginInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginInputCopyWithImpl<$Res>
    extends _$LoginInputCopyWithImpl<$Res, _$_LoginInput>
    implements _$$_LoginInputCopyWith<$Res> {
  __$$_LoginInputCopyWithImpl(
      _$_LoginInput _value, $Res Function(_$_LoginInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LoginInput(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginInput implements _LoginInput {
  const _$_LoginInput({required this.email, required this.password});

  factory _$_LoginInput.fromJson(Map<String, dynamic> json) =>
      _$$_LoginInputFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginInput(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginInput &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginInputCopyWith<_$_LoginInput> get copyWith =>
      __$$_LoginInputCopyWithImpl<_$_LoginInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginInputToJson(
      this,
    );
  }
}

abstract class _LoginInput implements LoginInput {
  const factory _LoginInput(
      {required final String email,
      required final String password}) = _$_LoginInput;

  factory _LoginInput.fromJson(Map<String, dynamic> json) =
      _$_LoginInput.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginInputCopyWith<_$_LoginInput> get copyWith =>
      throw _privateConstructorUsedError;
}

SendOTPInput _$SendOTPInputFromJson(Map<String, dynamic> json) {
  return _SendOTPInput.fromJson(json);
}

/// @nodoc
mixin _$SendOTPInput {
  String get email => throw _privateConstructorUsedError;
  bool get isRegister => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendOTPInputCopyWith<SendOTPInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOTPInputCopyWith<$Res> {
  factory $SendOTPInputCopyWith(
          SendOTPInput value, $Res Function(SendOTPInput) then) =
      _$SendOTPInputCopyWithImpl<$Res, SendOTPInput>;
  @useResult
  $Res call({String email, bool isRegister});
}

/// @nodoc
class _$SendOTPInputCopyWithImpl<$Res, $Val extends SendOTPInput>
    implements $SendOTPInputCopyWith<$Res> {
  _$SendOTPInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isRegister = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isRegister: null == isRegister
          ? _value.isRegister
          : isRegister // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendOTPInputCopyWith<$Res>
    implements $SendOTPInputCopyWith<$Res> {
  factory _$$_SendOTPInputCopyWith(
          _$_SendOTPInput value, $Res Function(_$_SendOTPInput) then) =
      __$$_SendOTPInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, bool isRegister});
}

/// @nodoc
class __$$_SendOTPInputCopyWithImpl<$Res>
    extends _$SendOTPInputCopyWithImpl<$Res, _$_SendOTPInput>
    implements _$$_SendOTPInputCopyWith<$Res> {
  __$$_SendOTPInputCopyWithImpl(
      _$_SendOTPInput _value, $Res Function(_$_SendOTPInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isRegister = null,
  }) {
    return _then(_$_SendOTPInput(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isRegister: null == isRegister
          ? _value.isRegister
          : isRegister // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendOTPInput implements _SendOTPInput {
  const _$_SendOTPInput({required this.email, required this.isRegister});

  factory _$_SendOTPInput.fromJson(Map<String, dynamic> json) =>
      _$$_SendOTPInputFromJson(json);

  @override
  final String email;
  @override
  final bool isRegister;

  @override
  String toString() {
    return 'SendOTPInput(email: $email, isRegister: $isRegister)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendOTPInput &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isRegister, isRegister) ||
                other.isRegister == isRegister));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, isRegister);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendOTPInputCopyWith<_$_SendOTPInput> get copyWith =>
      __$$_SendOTPInputCopyWithImpl<_$_SendOTPInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendOTPInputToJson(
      this,
    );
  }
}

abstract class _SendOTPInput implements SendOTPInput {
  const factory _SendOTPInput(
      {required final String email,
      required final bool isRegister}) = _$_SendOTPInput;

  factory _SendOTPInput.fromJson(Map<String, dynamic> json) =
      _$_SendOTPInput.fromJson;

  @override
  String get email;
  @override
  bool get isRegister;
  @override
  @JsonKey(ignore: true)
  _$$_SendOTPInputCopyWith<_$_SendOTPInput> get copyWith =>
      throw _privateConstructorUsedError;
}

ForgotPasswordInput _$ForgotPasswordInputFromJson(Map<String, dynamic> json) {
  return _ForgotPasswordInput.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordInput {
  String get email => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordInputCopyWith<ForgotPasswordInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordInputCopyWith<$Res> {
  factory $ForgotPasswordInputCopyWith(
          ForgotPasswordInput value, $Res Function(ForgotPasswordInput) then) =
      _$ForgotPasswordInputCopyWithImpl<$Res, ForgotPasswordInput>;
  @useResult
  $Res call({String email, String newPassword, String otp});
}

/// @nodoc
class _$ForgotPasswordInputCopyWithImpl<$Res, $Val extends ForgotPasswordInput>
    implements $ForgotPasswordInputCopyWith<$Res> {
  _$ForgotPasswordInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? newPassword = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordInputCopyWith<$Res>
    implements $ForgotPasswordInputCopyWith<$Res> {
  factory _$$_ForgotPasswordInputCopyWith(_$_ForgotPasswordInput value,
          $Res Function(_$_ForgotPasswordInput) then) =
      __$$_ForgotPasswordInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String newPassword, String otp});
}

/// @nodoc
class __$$_ForgotPasswordInputCopyWithImpl<$Res>
    extends _$ForgotPasswordInputCopyWithImpl<$Res, _$_ForgotPasswordInput>
    implements _$$_ForgotPasswordInputCopyWith<$Res> {
  __$$_ForgotPasswordInputCopyWithImpl(_$_ForgotPasswordInput _value,
      $Res Function(_$_ForgotPasswordInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? newPassword = null,
    Object? otp = null,
  }) {
    return _then(_$_ForgotPasswordInput(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForgotPasswordInput implements _ForgotPasswordInput {
  const _$_ForgotPasswordInput(
      {required this.email, required this.newPassword, required this.otp});

  factory _$_ForgotPasswordInput.fromJson(Map<String, dynamic> json) =>
      _$$_ForgotPasswordInputFromJson(json);

  @override
  final String email;
  @override
  final String newPassword;
  @override
  final String otp;

  @override
  String toString() {
    return 'ForgotPasswordInput(email: $email, newPassword: $newPassword, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordInput &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, newPassword, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordInputCopyWith<_$_ForgotPasswordInput> get copyWith =>
      __$$_ForgotPasswordInputCopyWithImpl<_$_ForgotPasswordInput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForgotPasswordInputToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordInput implements ForgotPasswordInput {
  const factory _ForgotPasswordInput(
      {required final String email,
      required final String newPassword,
      required final String otp}) = _$_ForgotPasswordInput;

  factory _ForgotPasswordInput.fromJson(Map<String, dynamic> json) =
      _$_ForgotPasswordInput.fromJson;

  @override
  String get email;
  @override
  String get newPassword;
  @override
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordInputCopyWith<_$_ForgotPasswordInput> get copyWith =>
      throw _privateConstructorUsedError;
}
