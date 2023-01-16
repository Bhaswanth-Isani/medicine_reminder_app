import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/application/auth_repository_state.dart';
import 'package:medicine_reminder_app/auth/domain/user.dart';
import 'package:medicine_reminder_app/auth/infrastructure/auth_local_client.dart';
import 'package:medicine_reminder_app/auth/infrastructure/auth_server_client.dart';
import 'package:medicine_reminder_app/core/infrastructure/dio_client_provider.dart';
import 'package:medicine_reminder_app/core/infrastructure/isar_client_provider.dart';

final authRepositoryProvider =
    StateNotifierProvider<AuthRepository, AuthRepositoryState>(
  AuthRepository.new,
);

class AuthRepository extends StateNotifier<AuthRepositoryState> {
  AuthRepository(this.ref)
      : super(const AuthRepositoryState(isLoading: false)) {
    getAuthenticatedUser();
  }

  final Ref ref;

  Future<void> getAuthenticatedUser() async {
    final user =
        ref.read(isarClientProvider).collection<AuthLocalClient>().getSync(0);

    if (user != null) {
      state = state.copyWith(
        isLoading: false,
        user: User(
          email: user.email,
          name: user.name,
          password: '',
        ),
        error: null,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        user: null,
        error: null,
      );
    }
  }

  Future<void> createAccountUsingEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    final authClient = AuthServerClient(ref.read(dioClientProvider));

    state = state.copyWith(isLoading: true);

      final registerResponse = await authClient.createAccount(
        User(email: email, name: name, password: password),
      );

      final userResponse = registerResponse.user;

      if (registerResponse.error == null && userResponse != null) {
        state = state.copyWith(
          isLoading: false,
          user: User(
            email: userResponse.email,
            name: userResponse.name,
            password: userResponse.password,
            id: userResponse.id,
            medicine: userResponse.medicine,
          ),
          error: null,
        );
      } else if (registerResponse.error != null) {
        state = state.copyWith(
          isLoading: false,
          error: registerResponse.error,
          user: null,
        );
      } else {
        state = state.copyWith(
          isLoading: false,
          error: 'SERVER_ERROR',
          user: null,
        );
      }
  }

  Future<void> loginUsingEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final authClient = AuthServerClient(ref.read(dioClientProvider));

    state = state.copyWith(isLoading: false);

    final loginResponse = await authClient.login(
      User(email: email, password: password),
    );

    final userResponse = loginResponse.user;

    if (loginResponse.error == null && userResponse != null) {
      state = state.copyWith(
        isLoading: false,
        user: User(
          email: userResponse.email,
          name: userResponse.name,
          password: userResponse.password,
          id: userResponse.id,
          medicine: userResponse.medicine,
        ),
        error: null,
      );
    } else if (loginResponse.error != null) {
      state = state.copyWith(
        isLoading: false,
        error: loginResponse.error,
        user: null,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        error: 'SERVER_ERROR',
        user: null,
      );
    }
  }
}
