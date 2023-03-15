// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoreFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) shortString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? shortString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? shortString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortString<T> value) shortString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShortString<T> value)? shortString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortString<T> value)? shortString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoreFailureCopyWith<T, CoreFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreFailureCopyWith<T, $Res> {
  factory $CoreFailureCopyWith(
          CoreFailure<T> value, $Res Function(CoreFailure<T>) then) =
      _$CoreFailureCopyWithImpl<T, $Res, CoreFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$CoreFailureCopyWithImpl<T, $Res, $Val extends CoreFailure<T>>
    implements $CoreFailureCopyWith<T, $Res> {
  _$CoreFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShortStringCopyWith<T, $Res>
    implements $CoreFailureCopyWith<T, $Res> {
  factory _$$ShortStringCopyWith(
          _$ShortString<T> value, $Res Function(_$ShortString<T>) then) =
      __$$ShortStringCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortStringCopyWithImpl<T, $Res>
    extends _$CoreFailureCopyWithImpl<T, $Res, _$ShortString<T>>
    implements _$$ShortStringCopyWith<T, $Res> {
  __$$ShortStringCopyWithImpl(
      _$ShortString<T> _value, $Res Function(_$ShortString<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortString<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortString<T> implements ShortString<T> {
  const _$ShortString({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'CoreFailure<$T>.shortString(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortString<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortStringCopyWith<T, _$ShortString<T>> get copyWith =>
      __$$ShortStringCopyWithImpl<T, _$ShortString<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) shortString,
  }) {
    return shortString(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? shortString,
  }) {
    return shortString?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? shortString,
    required TResult orElse(),
  }) {
    if (shortString != null) {
      return shortString(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortString<T> value) shortString,
  }) {
    return shortString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShortString<T> value)? shortString,
  }) {
    return shortString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortString<T> value)? shortString,
    required TResult orElse(),
  }) {
    if (shortString != null) {
      return shortString(this);
    }
    return orElse();
  }
}

abstract class ShortString<T> implements CoreFailure<T> {
  const factory ShortString({required final T failedValue}) = _$ShortString<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortStringCopyWith<T, _$ShortString<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
