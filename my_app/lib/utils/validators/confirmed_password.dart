part of 'validators.dart';

enum ConfirmedPasswordValidationError {
  empty,
  invalid;

  String message() {
    switch (this) {
      case ConfirmedPasswordValidationError.empty:
        return 'Field cannot be empty';
      case ConfirmedPasswordValidationError.invalid:
        return 'Passwords do not match';
    }
  }
}

class ConfirmedPassword
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  const ConfirmedPassword.pure({this.password = ''}) : super.pure('');

  const ConfirmedPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);

  final String password;

  @override
  ConfirmedPasswordValidationError? validator(String value) {
    return value.isEmpty
        ? ConfirmedPasswordValidationError.empty
        : password == value
            ? null
            : ConfirmedPasswordValidationError.invalid;
  }
}
