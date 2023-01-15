// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_repository_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthRepositoryState {
  User? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthRepositoryStateCopyWith<AuthRepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRepositoryStateCopyWith<$Res> {
  factory $AuthRepositoryStateCopyWith(
          AuthRepositoryState value, $Res Function(AuthRepositoryState) then) =
      _$AuthRepositoryStateCopyWithImpl<$Res, AuthRepositoryState>;
  @useResult
  $Res call({User? user, bool isLoading, String? error});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthRepositoryStateCopyWithImpl<$Res, $Val extends AuthRepositoryState>
    implements $AuthRepositoryStateCopyWith<$Res> {
  _$AuthRepositoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_AuthRepositoryStateCopyWith<$Res>
    implements $AuthRepositoryStateCopyWith<$Res> {
  factory _$$_AuthRepositoryStateCopyWith(_$_AuthRepositoryState value,
          $Res Function(_$_AuthRepositoryState) then) =
      __$$_AuthRepositoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, bool isLoading, String? error});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_AuthRepositoryStateCopyWithImpl<$Res>
    extends _$AuthRepositoryStateCopyWithImpl<$Res, _$_AuthRepositoryState>
    implements _$$_AuthRepositoryStateCopyWith<$Res> {
  __$$_AuthRepositoryStateCopyWithImpl(_$_AuthRepositoryState _value,
      $Res Function(_$_AuthRepositoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$_AuthRepositoryState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthRepositoryState implements _AuthRepositoryState {
  const _$_AuthRepositoryState(
      {this.user, required this.isLoading, this.error});

  @override
  final User? user;
  @override
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'AuthRepositoryState(user: $user, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthRepositoryState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthRepositoryStateCopyWith<_$_AuthRepositoryState> get copyWith =>
      __$$_AuthRepositoryStateCopyWithImpl<_$_AuthRepositoryState>(
          this, _$identity);
}

abstract class _AuthRepositoryState implements AuthRepositoryState {
  const factory _AuthRepositoryState(
      {final User? user,
      required final bool isLoading,
      final String? error}) = _$_AuthRepositoryState;

  @override
  User? get user;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AuthRepositoryStateCopyWith<_$_AuthRepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
