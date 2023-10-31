part of 'theme.dart';

abstract class AppColorsInterface {
  Color get neutralWhite;

  Color get neutral_0;
  Color get neutral_20;
  Color get neutral_40;
  Color get neutral_60;
  Color get neutral_80;
  Color get neutral_100;

  Color get primary_0;
  Color get primary_10;
  Color get primary_50;
  Color get primary_60;

  Color get danger_0;
  Color get danger_10;

  Color get warning_0;
  Color get warning_20;

  Color get colour1_0;
  Color get colour1_20;

  Color get colour2_0;
  Color get colour2_10;
}

class AppColors implements AppColorsInterface {
  @override
  Color get neutralWhite => const Color(0xFFFFFFFF);

  @override
  Color get neutral_0 => const Color(0xFFF6F7F9);
  @override
  Color get neutral_20 => const Color(0xFFDCDEE6);
  @override
  Color get neutral_40 => const Color(0xFF9EA2B3);
  @override
  Color get neutral_60 => const Color(0xFF6B6F80);
  @override
  Color get neutral_80 => const Color(0xFF3E414C);
  @override
  Color get neutral_100 => const Color(0xFF141519);

  @override
  Color get primary_0 => const Color(0xFFE3F0E9);
  @override
  Color get primary_10 => const Color(0xFFD1E4DA);
  @override
  Color get primary_50 => const Color(0xFF3F8961);
  @override
  Color get primary_60 => const Color(0xFF326E4E);

  @override
  Color get danger_0 => const Color(0xFFFEECEE);
  @override
  Color get danger_10 => const Color(0xFFE62E2E);

  @override
  Color get warning_0 => const Color(0xFFFFF5E6);
  @override
  Color get warning_20 => const Color(0xFFD6850A);

  @override
  Color get colour1_0 => const Color(0xFFE4EEFF);
  @override
  Color get colour1_20 => const Color(0xFF375596);

  @override
  Color get colour2_0 => const Color(0xFFF3F1FF);
  @override
  Color get colour2_10 => const Color(0xFF6257A3);
}
