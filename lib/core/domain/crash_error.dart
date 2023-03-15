import 'package:medicine_reminder_app/core/domain/value_failure.dart';

/// When instantiated the app will crash.
class UnexpectedValueError<T> extends Error {
  UnexpectedValueError(this.valueFailure);

  final ValueFailure<T> valueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';

    return Error.safeToString('$explanation, Failure was: $valueFailure');
  }
}
