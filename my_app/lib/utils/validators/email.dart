part of 'validators.dart';

enum EmailValidationError { 
  empty, 
  invalid; 

  String message() {
    switch (this) {
      case EmailValidationError.empty:
        return 'Field cannot be empty';
      case EmailValidationError.invalid:
        return 'Invalid email format';
    }
  }
}

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([super.value = '']) : super.dirty();

  @override
  EmailValidationError? validator(String value) {
    final emailRegExp = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );

    return value.isEmpty
        ? EmailValidationError.empty
        : !emailRegExp.hasMatch(value)
            ? EmailValidationError.invalid
            : null;
  }
}
