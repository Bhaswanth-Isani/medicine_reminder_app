// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicineResponse _$MedicineResponseFromJson(Map<String, dynamic> json) {
  return _MedicineResponse.fromJson(json);
}

/// @nodoc
mixin _$MedicineResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Medicine? get medicine => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicineResponseCopyWith<MedicineResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineResponseCopyWith<$Res> {
  factory $MedicineResponseCopyWith(
          MedicineResponse value, $Res Function(MedicineResponse) then) =
      _$MedicineResponseCopyWithImpl<$Res, MedicineResponse>;
  @useResult
  $Res call({bool success, String? error, Medicine? medicine});

  $MedicineCopyWith<$Res>? get medicine;
}

/// @nodoc
class _$MedicineResponseCopyWithImpl<$Res, $Val extends MedicineResponse>
    implements $MedicineResponseCopyWith<$Res> {
  _$MedicineResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? error = freezed,
    Object? medicine = freezed,
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
      medicine: freezed == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as Medicine?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MedicineCopyWith<$Res>? get medicine {
    if (_value.medicine == null) {
      return null;
    }

    return $MedicineCopyWith<$Res>(_value.medicine!, (value) {
      return _then(_value.copyWith(medicine: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MedicineResponseCopyWith<$Res>
    implements $MedicineResponseCopyWith<$Res> {
  factory _$$_MedicineResponseCopyWith(
          _$_MedicineResponse value, $Res Function(_$_MedicineResponse) then) =
      __$$_MedicineResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? error, Medicine? medicine});

  @override
  $MedicineCopyWith<$Res>? get medicine;
}

/// @nodoc
class __$$_MedicineResponseCopyWithImpl<$Res>
    extends _$MedicineResponseCopyWithImpl<$Res, _$_MedicineResponse>
    implements _$$_MedicineResponseCopyWith<$Res> {
  __$$_MedicineResponseCopyWithImpl(
      _$_MedicineResponse _value, $Res Function(_$_MedicineResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? error = freezed,
    Object? medicine = freezed,
  }) {
    return _then(_$_MedicineResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      medicine: freezed == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as Medicine?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicineResponse implements _MedicineResponse {
  const _$_MedicineResponse(
      {required this.success, required this.error, required this.medicine});

  factory _$_MedicineResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MedicineResponseFromJson(json);

  @override
  final bool success;
  @override
  final String? error;
  @override
  final Medicine? medicine;

  @override
  String toString() {
    return 'MedicineResponse(success: $success, error: $error, medicine: $medicine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, error, medicine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineResponseCopyWith<_$_MedicineResponse> get copyWith =>
      __$$_MedicineResponseCopyWithImpl<_$_MedicineResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicineResponseToJson(
      this,
    );
  }
}

abstract class _MedicineResponse implements MedicineResponse {
  const factory _MedicineResponse(
      {required final bool success,
      required final String? error,
      required final Medicine? medicine}) = _$_MedicineResponse;

  factory _MedicineResponse.fromJson(Map<String, dynamic> json) =
      _$_MedicineResponse.fromJson;

  @override
  bool get success;
  @override
  String? get error;
  @override
  Medicine? get medicine;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineResponseCopyWith<_$_MedicineResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
