import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medicine_reminder_app/auth/domain/user.dart';

part 'auth_repository_state.freezed.dart';

@freezed
class AuthRepositoryState with _$AuthRepositoryState {
  const factory AuthRepositoryState({
    User? user,
    required bool isLoading,
    String? error,
  }) = _AuthRepositoryState;
}
