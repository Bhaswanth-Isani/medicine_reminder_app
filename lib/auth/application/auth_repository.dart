import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/application/auth_repository_state.dart';
import 'package:medicine_reminder_app/auth/domain/user.dart';
import 'package:medicine_reminder_app/auth/infrastructure/auth_local_client.dart';
import 'package:medicine_reminder_app/auth/infrastructure/auth_server_client.dart';
import 'package:medicine_reminder_app/core/infrastructure/dio_client_provider.dart';
import 'package:medicine_reminder_app/core/infrastructure/isar_client_provider.dart';
import 'package:medicine_reminder_app/medicine/infrastructure/medicine_local_client.dart';

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
          medicines: userResponse.medicines,
        ),
        error: null,
      );

      ref.read(isarClientProvider).writeTxnSync(() {
        final admin = AuthLocalClient()
          ..email = userResponse.email
          ..name = userResponse.name!
          ..token = registerResponse.token!;

        ref
            .read(isarClientProvider)
            .collection<AuthLocalClient>()
            .putSync(admin);
      });
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

    state = state.copyWith(isLoading: true);

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
          medicines: userResponse.medicines,
        ),
        error: null,
      );

      ref.read(isarClientProvider).writeTxnSync(() {
        final medicines = userResponse.medicines?.map((e) {
          final medicine = MedicineLocalClient()
            ..userID = e.userID
            ..name = e.name
            ..compartment = e.compartment
            ..number = e.number
            ..time = e.time.map(DateTime.parse).toList();

          ref
              .read(isarClientProvider)
              .collection<MedicineLocalClient>()
              .putSync(medicine);

          return medicine;
        });

        final admin = AuthLocalClient()
          ..email = userResponse.email
          ..name = userResponse.name!
          ..token = loginResponse.token!
          ..medicines.addAll(medicines ?? []);

        ref
            .read(isarClientProvider)
            .collection<AuthLocalClient>()
            .putSync(admin);
      });
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

  void signOut() {
    ref.read(isarClientProvider).writeTxnSync(
          () => ref
              .read(isarClientProvider)
              .collection<AuthLocalClient>()
              .deleteSync(0),
        );

    state = state.copyWith(isLoading: false, user: null, error: null);
  }
}
