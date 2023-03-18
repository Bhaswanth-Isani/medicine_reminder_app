import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:medicine_reminder_app/api/api.dart';
import 'package:medicine_reminder_app/core/core.dart';
import 'package:medicine_reminder_app/dashboard/infrastructure/medicine_isar.dart';

abstract class BaseAuthLocalRepository {
  /// Returns AdminIsar from local database if available else returns
  /// CoreInfrastructureFailure
  /// - unauthorized
  Either<InfrastructureFailure, AdminIsar> getLoggedInUser();

  /// Returns AdminIsar if the Admin is successfully save into the database else
  /// returns CoreInfrastructureFailure
  /// - uniqueViolation
  /// - databaseError
  Either<InfrastructureFailure, AdminIsar> saveLoggedInUser(
    UserApiResponse userApiResponse,
  );

  /// Returns Unit if the Admin document is successfully deleted else returns
  /// an InfrastructureFailure.
  Either<InfrastructureFailure, Unit> signOut();
}

/// Provides all the methods useful in storing auth data locally. These methods
/// include
/// - getLoggedInUser
/// - saveLoggedInUser
final authLocalRepositoryProvider = Provider<AuthLocalRepository>(
  (ref) {
    final isar = ref.watch(isarClientProvider);

    return AuthLocalRepository(isar);
  },
);

class AuthLocalRepository implements BaseAuthLocalRepository {
  AuthLocalRepository(this._isar);

  final Isar _isar;

  @override
  Either<InfrastructureFailure, AdminIsar> getLoggedInUser() {
    // Gets the Admin using id 0 from local database. If it finds a document
    // then returns it else returns an InfrastructureError.
    final admin = _isar.adminIsars.where().findFirstSync();

    return admin != null
        ? right(admin)
        : left(const CoreInfrastructureFailure.unauthorized());
  }

  @override
  Either<InfrastructureFailure, AdminIsar> saveLoggedInUser(
    UserApiResponse userApiResponse,
  ) {
    final admin = AdminIsar()
      ..token = userApiResponse.token!
      ..email = userApiResponse.user!.email.value
      ..id = userApiResponse.user!.id
      ..username = userApiResponse.user!.name.value;

    // Creates a new Admin document in the database. If there is no error then
    // it returns admin else returns an InfrastructureFailure.
    try {
      _isar.writeTxnSync(() => _isar.adminIsars.putSync(admin));

      for (var i = 0; i < userApiResponse.user!.medicines.length; i++) {
        final medicine = userApiResponse.user!.medicines[i];

        final medicineIsar = MedicineIsar()
          ..id = medicine.id
          ..name = medicine.name
          ..compartment = medicine.compartment
          ..number = medicine.number
          ..userID = medicine.userID
          ..time = medicine.time.map(DateTime.parse).toList();

        _isar.writeTxnSync(() => _isar.medicineIsars.putSync(medicineIsar));
      }

      return right(admin);
    } catch (_) {
      return left(const CoreInfrastructureFailure.databaseError());
    }
  }

  @override
  Either<InfrastructureFailure, Unit> signOut() {
    try {
      _isar.writeTxnSync(() {
        final admin = _isar.adminIsars.where().findFirstSync();

        if (admin != null) {
          final medicines =
              _isar.medicineIsars.where().isarIdProperty().findAllSync();

          _isar.medicineIsars.deleteAllSync(medicines);
          _isar.adminIsars.deleteSync(admin.isarId);
        }
      });

      return right(unit);
    } catch (_) {
      return left(const CoreInfrastructureFailure.databaseError());
    }
  }
}
