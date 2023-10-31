part of 'validators.dart';

enum UsernameValidationError { 
  empty,
  invalid; 

  String message() {
    switch (this) {
      case UsernameValidationError.empty:
        return 'Field cannot be empty';
      case UsernameValidationError.invalid:
        return 'Username must be between 5 and 30 characters long';
    }
  } 
}

class Username extends FormzInput<String, UsernameValidationError> {
  const Username.pure() : super.pure('');
  const Username.dirty([super.value = '']) : super.dirty();

  @override
  UsernameValidationError? validator(String value) {
    return value.isEmpty
        ? UsernameValidationError.empty
        : value.length < 5 || value.length > 30
            ? UsernameValidationError.invalid
            : null;
  }
}
