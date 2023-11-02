part of 'theme.dart';

class AppTheme {
  ThemeData get appTheme {
    final appColors = AppColors();
    final appTextStyles = AppTextStyles();

    return ThemeData(
      useMaterial3: true,
      primaryColor: appColors.primary_50,
      scaffoldBackgroundColor: appColors.neutralWhite,
      canvasColor: appColors.neutralWhite,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: appColors.primary_50,
      ),
      unselectedWidgetColor: appColors.neutral_60,
      appBarTheme: AppBarTheme(
        elevation: 1,
        titleTextStyle: appTextStyles.h4.copyWith(color: appColors.neutral_80),
        backgroundColor: appColors.neutralWhite,
        foregroundColor: appColors.neutral_80,
        centerTitle: true,
        iconTheme: IconThemeData(color: appColors.neutral_60, size: 24),
      ),
      iconTheme: IconThemeData(color: appColors.neutral_60, size: 24),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: appColors.neutralWhite,
        selectedItemColor: appColors.primary_50,
        unselectedItemColor: appColors.neutral_40,
        selectedLabelStyle: appTextStyles.textBodyMicro.copyWith(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: appTextStyles.textBodyMicro.copyWith(
          fontWeight: FontWeight.w600,
        ),
        selectedIconTheme: const IconThemeData(size: 24),
        unselectedIconTheme: const IconThemeData(size: 24),
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: appColors.neutralWhite,
        elevation: 30,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: appColors.neutralWhite,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 2,
        backgroundColor: appColors.primary_50,
        foregroundColor: appColors.neutralWhite,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        color: appColors.neutral_20,
        space: 0,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: appColors.neutral_80,
        contentTextStyle: appTextStyles.textBodyLarge.copyWith(
          color: AppColors().neutralWhite,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(
            appColors.primary_60,
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? appColors.neutral_20
                    : appColors.primary_50,
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? appColors.neutral_40
                    : appColors.neutralWhite,
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            appTextStyles.buttonLarge,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(
            appColors.primary_0,
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? appColors.neutral_20
                    : appColors.neutralWhite,
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? appColors.neutral_40
                    : appColors.primary_50,
          ),
          side: MaterialStateProperty.resolveWith<BorderSide>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.disabled)
                    ? BorderSide(color: appColors.neutral_20)
                    : BorderSide(color: appColors.primary_50),
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            appTextStyles.buttonLarge,
          ),
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: appColors.primary_50,
        selectionColor: appColors.primary_10,
        selectionHandleColor: appColors.primary_50,
      ),
      cardTheme: CardTheme(
        color: appColors.neutralWhite,
        elevation: 20,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: appColors.primary_60,
        labelStyle: appTextStyles.textBodySmall,
        unselectedLabelColor: appColors.neutral_60,
        unselectedLabelStyle: appTextStyles.textBodySmall,
        labelPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: appColors.primary_0,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: appColors.neutral_0,
        filled: true,
        isDense: true,
        hintStyle: appTextStyles.textBodyLarge.copyWith(
          color: appColors.neutral_40,
        ),
        errorMaxLines: 3,
        errorStyle: appTextStyles.textBodySmall.copyWith(
          color: appColors.danger_10,
        ),
        contentPadding: const EdgeInsets.fromLTRB(12, 10, 14, 12),
        suffixIconColor: appColors.neutral_60,
        iconColor: appColors.neutral_60,
        border: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide.none,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide.none,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide.none,
        ),
        errorBorder: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide.none,
        ),
      ),
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        onPrimary: appColors.neutralWhite,
        secondary: appColors.primary_0,
        primaryContainer: appColors.primary_10,
        primary: appColors.primary_50,
        onPrimaryContainer: appColors.primary_60,
        onError: appColors.danger_0,
        error: appColors.danger_10,
        errorContainer: appColors.warning_0,
        onErrorContainer: appColors.warning_20,
        tertiary: appColors.colour1_0,
        onTertiary: appColors.colour1_20,
        tertiaryContainer: appColors.colour2_0,
        onTertiaryContainer: appColors.colour2_10,
        onSecondary: appColors.neutral_0,
        onSecondaryContainer: appColors.neutral_20,
        onBackground: appColors.neutral_40,
        onSurface: appColors.neutral_60,
        onSurfaceVariant: appColors.neutral_80,
        onInverseSurface: appColors.neutral_100,
        background: appColors.neutralWhite,
        surface: appColors.neutralWhite,
      ),
      textTheme: TextTheme(
        displayLarge: appTextStyles.h1,
        displayMedium: appTextStyles.h2,
        displaySmall: appTextStyles.h3,
        headlineMedium: appTextStyles.h4,
        headlineSmall: appTextStyles.h5,
        titleLarge: appTextStyles.h6,
        bodyLarge: appTextStyles.textBodyLarge,
        bodyMedium: appTextStyles.textBodySmall,
        bodySmall: appTextStyles.textBodyMicro,
        labelLarge: appTextStyles.footNote,
        titleMedium: appTextStyles.buttonLarge,
        titleSmall: appTextStyles.buttonSmall,
      ),
    );
  }
}
