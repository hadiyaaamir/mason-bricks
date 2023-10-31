part of 'validators.dart';

enum PasswordValidationError { 
  empty, 
  invalid; 

  String message() {
    switch (this) {
      case PasswordValidationError.empty:
        return 'Field cannot be empty';
      case PasswordValidationError.invalid:
        return 'Password length must be between 8 and 50 characters';
    }
  }
}

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    return value.isEmpty
        ? PasswordValidationError.empty
        : value.length < 8 || value.length > 50
            ? PasswordValidationError.invalid
            : null;
  }
}
