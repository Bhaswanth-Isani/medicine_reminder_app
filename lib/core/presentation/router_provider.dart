import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/application/auth_repository.dart';
import 'package:medicine_reminder_app/core/presentation/router.dart';

final routerProvider = Provider<AppRouter>((ref) {
  var authenticated = false;

  if (ref.watch(authRepositoryProvider).user != null) {
    authenticated = true;
  }

  return AppRouter(authGuard: AuthGuard(authenticated: authenticated));
});
