// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'infrastructure_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoreInfrastructureFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() databaseError,
    required TResult Function() invalidData,
    required TResult Function() unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? databaseError,
    TResult? Function()? invalidData,
    TResult? Function()? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? databaseError,
    TResult Function()? invalidData,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(InvalidData value) invalidData,
    required TResult Function(Unauthorized value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(DatabaseError value)? databaseError,
    TResult? Function(InvalidData value)? invalidData,
    TResult? Function(Unauthorized value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(InvalidData value)? invalidData,
    TResult Function(Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreInfrastructureFailureCopyWith<$Res> {
  factory $CoreInfrastructureFailureCopyWith(CoreInfrastructureFailure value,
          $Res Function(CoreInfrastructureFailure) then) =
      _$CoreInfrastructureFailureCopyWithImpl<$Res, CoreInfrastructureFailure>;
}

/// @nodoc
class _$CoreInfrastructureFailureCopyWithImpl<$Res,
        $Val extends CoreInfrastructureFailure>
    implements $CoreInfrastructureFailureCopyWith<$Res> {
  _$CoreInfrastructureFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$CoreInfrastructureFailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'CoreInfrastructureFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() databaseError,
    required TResult Function() invalidData,
    required TResult Function() unauthorized,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? databaseError,
    TResult? Function()? invalidData,
    TResult? Function()? unauthorized,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? databaseError,
    TResult Function()? invalidData,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(InvalidData value) invalidData,
    required TResult Function(Unauthorized value) unauthorized,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(DatabaseError value)? databaseError,
    TResult? Function(InvalidData value)? invalidData,
    TResult? Function(Unauthorized value)? unauthorized,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(InvalidData value)? invalidData,
    TResult Function(Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements CoreInfrastructureFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$DatabaseErrorCopyWith<$Res> {
  factory _$$DatabaseErrorCopyWith(
          _$DatabaseError value, $Res Function(_$DatabaseError) then) =
      __$$DatabaseErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DatabaseErrorCopyWithImpl<$Res>
    extends _$CoreInfrastructureFailureCopyWithImpl<$Res, _$DatabaseError>
    implements _$$DatabaseErrorCopyWith<$Res> {
  __$$DatabaseErrorCopyWithImpl(
      _$DatabaseError _value, $Res Function(_$DatabaseError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DatabaseError implements DatabaseError {
  const _$DatabaseError();

  @override
  String toString() {
    return 'CoreInfrastructureFailure.databaseError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DatabaseError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() databaseError,
    required TResult Function() invalidData,
    required TResult Function() unauthorized,
  }) {
    return databaseError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? databaseError,
    TResult? Function()? invalidData,
    TResult? Function()? unauthorized,
  }) {
    return databaseError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? databaseError,
    TResult Function()? invalidData,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(InvalidData value) invalidData,
    required TResult Function(Unauthorized value) unauthorized,
  }) {
    return databaseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(DatabaseError value)? databaseError,
    TResult? Function(InvalidData value)? invalidData,
    TResult? Function(Unauthorized value)? unauthorized,
  }) {
    return databaseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(InvalidData value)? invalidData,
    TResult Function(Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError(this);
    }
    return orElse();
  }
}

abstract class DatabaseError implements CoreInfrastructureFailure {
  const factory DatabaseError() = _$DatabaseError;
}

/// @nodoc
abstract class _$$InvalidDataCopyWith<$Res> {
  factory _$$InvalidDataCopyWith(
          _$InvalidData value, $Res Function(_$InvalidData) then) =
      __$$InvalidDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidDataCopyWithImpl<$Res>
    extends _$CoreInfrastructureFailureCopyWithImpl<$Res, _$InvalidData>
    implements _$$InvalidDataCopyWith<$Res> {
  __$$InvalidDataCopyWithImpl(
      _$InvalidData _value, $Res Function(_$InvalidData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidData implements InvalidData {
  const _$InvalidData();

  @override
  String toString() {
    return 'CoreInfrastructureFailure.invalidData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() databaseError,
    required TResult Function() invalidData,
    required TResult Function() unauthorized,
  }) {
    return invalidData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? databaseError,
    TResult? Function()? invalidData,
    TResult? Function()? unauthorized,
  }) {
    return invalidData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? databaseError,
    TResult Function()? invalidData,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(InvalidData value) invalidData,
    required TResult Function(Unauthorized value) unauthorized,
  }) {
    return invalidData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(DatabaseError value)? databaseError,
    TResult? Function(InvalidData value)? invalidData,
    TResult? Function(Unauthorized value)? unauthorized,
  }) {
    return invalidData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(InvalidData value)? invalidData,
    TResult Function(Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(this);
    }
    return orElse();
  }
}

abstract class InvalidData implements CoreInfrastructureFailure {
  const factory InvalidData() = _$InvalidData;
}

/// @nodoc
abstract class _$$UnauthorizedCopyWith<$Res> {
  factory _$$UnauthorizedCopyWith(
          _$Unauthorized value, $Res Function(_$Unauthorized) then) =
      __$$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedCopyWithImpl<$Res>
    extends _$CoreInfrastructureFailureCopyWithImpl<$Res, _$Unauthorized>
    implements _$$UnauthorizedCopyWith<$Res> {
  __$$UnauthorizedCopyWithImpl(
      _$Unauthorized _value, $Res Function(_$Unauthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Unauthorized implements Unauthorized {
  const _$Unauthorized();

  @override
  String toString() {
    return 'CoreInfrastructureFailure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() databaseError,
    required TResult Function() invalidData,
    required TResult Function() unauthorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? databaseError,
    TResult? Function()? invalidData,
    TResult? Function()? unauthorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? databaseError,
    TResult Function()? invalidData,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(InvalidData value) invalidData,
    required TResult Function(Unauthorized value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(DatabaseError value)? databaseError,
    TResult? Function(InvalidData value)? invalidData,
    TResult? Function(Unauthorized value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(InvalidData value)? invalidData,
    TResult Function(Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements CoreInfrastructureFailure {
  const factory Unauthorized() = _$Unauthorized;
}
