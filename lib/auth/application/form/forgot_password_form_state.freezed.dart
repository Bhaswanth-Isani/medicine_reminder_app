// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordFormState {
  EmailAddress get email => throw _privateConstructorUsedError;
  OTP get otp => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordFormStateCopyWith<ForgotPasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordFormStateCopyWith<$Res> {
  factory $ForgotPasswordFormStateCopyWith(ForgotPasswordFormState value,
          $Res Function(ForgotPasswordFormState) then) =
      _$ForgotPasswordFormStateCopyWithImpl<$Res, ForgotPasswordFormState>;
  @useResult
  $Res call(
      {EmailAddress email, OTP otp, Password newPassword, bool showErrors});
}

/// @nodoc
class _$ForgotPasswordFormStateCopyWithImpl<$Res,
        $Val extends ForgotPasswordFormState>
    implements $ForgotPasswordFormStateCopyWith<$Res> {
  _$ForgotPasswordFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
    Object? newPassword = null,
    Object? showErrors = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTP,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrors: null == showErrors
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordFormStateCopyWith<$Res>
    implements $ForgotPasswordFormStateCopyWith<$Res> {
  factory _$$_ForgotPasswordFormStateCopyWith(_$_ForgotPasswordFormState value,
          $Res Function(_$_ForgotPasswordFormState) then) =
      __$$_ForgotPasswordFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress email, OTP otp, Password newPassword, bool showErrors});
}

/// @nodoc
class __$$_ForgotPasswordFormStateCopyWithImpl<$Res>
    extends _$ForgotPasswordFormStateCopyWithImpl<$Res,
        _$_ForgotPasswordFormState>
    implements _$$_ForgotPasswordFormStateCopyWith<$Res> {
  __$$_ForgotPasswordFormStateCopyWithImpl(_$_ForgotPasswordFormState _value,
      $Res Function(_$_ForgotPasswordFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
    Object? newPassword = null,
    Object? showErrors = null,
  }) {
    return _then(_$_ForgotPasswordFormState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTP,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrors: null == showErrors
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordFormState implements _ForgotPasswordFormState {
  const _$_ForgotPasswordFormState(
      {required this.email,
      required this.otp,
      required this.newPassword,
      required this.showErrors});

  @override
  final EmailAddress email;
  @override
  final OTP otp;
  @override
  final Password newPassword;
  @override
  final bool showErrors;

  @override
  String toString() {
    return 'ForgotPasswordFormState(email: $email, otp: $otp, newPassword: $newPassword, showErrors: $showErrors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordFormState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, otp, newPassword, showErrors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordFormStateCopyWith<_$_ForgotPasswordFormState>
      get copyWith =>
          __$$_ForgotPasswordFormStateCopyWithImpl<_$_ForgotPasswordFormState>(
              this, _$identity);
}

abstract class _ForgotPasswordFormState implements ForgotPasswordFormState {
  const factory _ForgotPasswordFormState(
      {required final EmailAddress email,
      required final OTP otp,
      required final Password newPassword,
      required final bool showErrors}) = _$_ForgotPasswordFormState;

  @override
  EmailAddress get email;
  @override
  OTP get otp;
  @override
  Password get newPassword;
  @override
  bool get showErrors;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordFormStateCopyWith<_$_ForgotPasswordFormState>
      get copyWith => throw _privateConstructorUsedError;
}
