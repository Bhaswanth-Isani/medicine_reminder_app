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
  String get name => throw _privateConstructorUsedError;
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
  $Res call({String name, String email, String password});
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
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
  $Res call({String name, String email, String password});
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
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_CreateAccountInput(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      {required this.name, required this.email, required this.password});

  factory _$_CreateAccountInput.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAccountInputFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'CreateAccountInput(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAccountInput &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

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
      {required final String name,
      required final String email,
      required final String password}) = _$_CreateAccountInput;

  factory _CreateAccountInput.fromJson(Map<String, dynamic> json) =
      _$_CreateAccountInput.fromJson;

  @override
  String get name;
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
