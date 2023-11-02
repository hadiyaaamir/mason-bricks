part of 'validators.dart';

enum NumericInputValidationError { 
  empty, 
  invalid; 

  String message() {
    switch (this) {
      case NumericInputValidationError.empty:
        return 'Field cannot be empty';
      case NumericInputValidationError.invalid:
        return 'Invalid format - value must be numeric';
    }
  }
}

class NumericInput extends FormzInput<String, NumericInputValidationError> {
  final bool allowEmpty;

  const NumericInput.pure({this.allowEmpty = false}) : super.pure('');
  const NumericInput.dirty({this.allowEmpty = false, String value = ''})
      : super.dirty(value);

  @override
  NumericInputValidationError? validator(String value) {
    final numericRegExp = RegExp(r'^(?:\d+(\.\d+)?|\d*\.\d+|\d+/\d*)?$');

    return value.isEmpty && !allowEmpty
        ? NumericInputValidationError.empty
        : !numericRegExp.hasMatch(value)
            ? NumericInputValidationError.invalid
            : null;
  }
}
