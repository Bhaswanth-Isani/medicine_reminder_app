import 'package:dartz/dartz.dart';
import 'package:medicine_reminder_app/core/domain/value_failure.dart';

/// Shortcut Typedef for Either<ValueFailure<T>, T>.
typedef EitherFailure<T> = Either<ValueFailure<T>, T>;
