part of 'theme.dart';

abstract class AppTextStylesInterface {
  TextStyle get baseTextStyle;

  TextStyle get h1;
  TextStyle get h2;
  TextStyle get h3;
  TextStyle get h4;
  TextStyle get h5;
  TextStyle get h6;

  TextStyle get textBodyLarge;
  TextStyle get textBodySmall;
  TextStyle get textBodyMicro;

  TextStyle get footNote;

  TextStyle get buttonLarge;
  TextStyle get buttonSmall;
}

class AppTextStyles implements AppTextStylesInterface {
  @override
  // TODO: implement baseTextStyle
  TextStyle get baseTextStyle => throw UnimplementedError();

  @override
  // TODO: implement buttonLarge
  TextStyle get buttonLarge => throw UnimplementedError();

  @override
  // TODO: implement buttonSmall
  TextStyle get buttonSmall => throw UnimplementedError();

  @override
  // TODO: implement footNote
  TextStyle get footNote => throw UnimplementedError();

  @override
  // TODO: implement h1
  TextStyle get h1 => throw UnimplementedError();

  @override
  // TODO: implement h2
  TextStyle get h2 => throw UnimplementedError();

  @override
  // TODO: implement h3
  TextStyle get h3 => throw UnimplementedError();

  @override
  // TODO: implement h4
  TextStyle get h4 => throw UnimplementedError();

  @override
  // TODO: implement h5
  TextStyle get h5 => throw UnimplementedError();

  @override
  // TODO: implement h6
  TextStyle get h6 => throw UnimplementedError();

  @override
  // TODO: implement textBodyLarge
  TextStyle get textBodyLarge => throw UnimplementedError();

  @override
  // TODO: implement textBodyMicro
  TextStyle get textBodyMicro => throw UnimplementedError();

  @override
  // TODO: implement textBodySmall
  TextStyle get textBodySmall => throw UnimplementedError();
}
