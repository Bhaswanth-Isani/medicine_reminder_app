// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_infrastructure_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthInfrastructureFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userAlreadyExists,
    required TResult Function() invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userAlreadyExists,
    TResult? Function()? invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userAlreadyExists,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAlreadyExists value)? userAlreadyExists,
    TResult? Function(InvalidCredentials value)? invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfrastructureFailureCopyWith<$Res> {
  factory $AuthInfrastructureFailureCopyWith(AuthInfrastructureFailure value,
          $Res Function(AuthInfrastructureFailure) then) =
      _$AuthInfrastructureFailureCopyWithImpl<$Res, AuthInfrastructureFailure>;
}

/// @nodoc
class _$AuthInfrastructureFailureCopyWithImpl<$Res,
        $Val extends AuthInfrastructureFailure>
    implements $AuthInfrastructureFailureCopyWith<$Res> {
  _$AuthInfrastructureFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserAlreadyExistsCopyWith<$Res> {
  factory _$$UserAlreadyExistsCopyWith(
          _$UserAlreadyExists value, $Res Function(_$UserAlreadyExists) then) =
      __$$UserAlreadyExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAlreadyExistsCopyWithImpl<$Res>
    extends _$AuthInfrastructureFailureCopyWithImpl<$Res, _$UserAlreadyExists>
    implements _$$UserAlreadyExistsCopyWith<$Res> {
  __$$UserAlreadyExistsCopyWithImpl(
      _$UserAlreadyExists _value, $Res Function(_$UserAlreadyExists) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserAlreadyExists implements UserAlreadyExists {
  const _$UserAlreadyExists();

  @override
  String toString() {
    return 'AuthInfrastructureFailure.userAlreadyExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserAlreadyExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userAlreadyExists,
    required TResult Function() invalidCredentials,
  }) {
    return userAlreadyExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userAlreadyExists,
    TResult? Function()? invalidCredentials,
  }) {
    return userAlreadyExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userAlreadyExists,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (userAlreadyExists != null) {
      return userAlreadyExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return userAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAlreadyExists value)? userAlreadyExists,
    TResult? Function(InvalidCredentials value)? invalidCredentials,
  }) {
    return userAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (userAlreadyExists != null) {
      return userAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class UserAlreadyExists implements AuthInfrastructureFailure {
  const factory UserAlreadyExists() = _$UserAlreadyExists;
}

/// @nodoc
abstract class _$$InvalidCredentialsCopyWith<$Res> {
  factory _$$InvalidCredentialsCopyWith(_$InvalidCredentials value,
          $Res Function(_$InvalidCredentials) then) =
      __$$InvalidCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidCredentialsCopyWithImpl<$Res>
    extends _$AuthInfrastructureFailureCopyWithImpl<$Res, _$InvalidCredentials>
    implements _$$InvalidCredentialsCopyWith<$Res> {
  __$$InvalidCredentialsCopyWithImpl(
      _$InvalidCredentials _value, $Res Function(_$InvalidCredentials) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidCredentials implements InvalidCredentials {
  const _$InvalidCredentials();

  @override
  String toString() {
    return 'AuthInfrastructureFailure.invalidCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userAlreadyExists,
    required TResult Function() invalidCredentials,
  }) {
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userAlreadyExists,
    TResult? Function()? invalidCredentials,
  }) {
    return invalidCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userAlreadyExists,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAlreadyExists value)? userAlreadyExists,
    TResult? Function(InvalidCredentials value)? invalidCredentials,
  }) {
    return invalidCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class InvalidCredentials implements AuthInfrastructureFailure {
  const factory InvalidCredentials() = _$InvalidCredentials;
}
