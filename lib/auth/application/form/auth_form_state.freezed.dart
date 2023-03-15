// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFormState {
  Username get username => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  OTP get otp => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFormStateCopyWith<AuthFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormStateCopyWith<$Res> {
  factory $AuthFormStateCopyWith(
          AuthFormState value, $Res Function(AuthFormState) then) =
      _$AuthFormStateCopyWithImpl<$Res, AuthFormState>;
  @useResult
  $Res call(
      {Username username,
      EmailAddress email,
      Password password,
      OTP otp,
      bool showErrors});
}

/// @nodoc
class _$AuthFormStateCopyWithImpl<$Res, $Val extends AuthFormState>
    implements $AuthFormStateCopyWith<$Res> {
  _$AuthFormStateCopyWithImpl(this._value, this._then);

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
    Object? otp = null,
    Object? showErrors = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTP,
      showErrors: null == showErrors
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthFormStateCopyWith<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  factory _$$_AuthFormStateCopyWith(
          _$_AuthFormState value, $Res Function(_$_AuthFormState) then) =
      __$$_AuthFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Username username,
      EmailAddress email,
      Password password,
      OTP otp,
      bool showErrors});
}

/// @nodoc
class __$$_AuthFormStateCopyWithImpl<$Res>
    extends _$AuthFormStateCopyWithImpl<$Res, _$_AuthFormState>
    implements _$$_AuthFormStateCopyWith<$Res> {
  __$$_AuthFormStateCopyWithImpl(
      _$_AuthFormState _value, $Res Function(_$_AuthFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? otp = null,
    Object? showErrors = null,
  }) {
    return _then(_$_AuthFormState(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTP,
      showErrors: null == showErrors
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthFormState implements _AuthFormState {
  const _$_AuthFormState(
      {required this.username,
      required this.email,
      required this.password,
      required this.otp,
      required this.showErrors});

  @override
  final Username username;
  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final OTP otp;
  @override
  final bool showErrors;

  @override
  String toString() {
    return 'AuthFormState(username: $username, email: $email, password: $password, otp: $otp, showErrors: $showErrors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFormState &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, username, email, password, otp, showErrors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthFormStateCopyWith<_$_AuthFormState> get copyWith =>
      __$$_AuthFormStateCopyWithImpl<_$_AuthFormState>(this, _$identity);
}

abstract class _AuthFormState implements AuthFormState {
  const factory _AuthFormState(
      {required final Username username,
      required final EmailAddress email,
      required final Password password,
      required final OTP otp,
      required final bool showErrors}) = _$_AuthFormState;

  @override
  Username get username;
  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  OTP get otp;
  @override
  bool get showErrors;
  @override
  @JsonKey(ignore: true)
  _$$_AuthFormStateCopyWith<_$_AuthFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
