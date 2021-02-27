import 'package:flutter/material.dart';

class AppTheme with ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;

  void toggleDarkMode() {
    _isDark = !_isDark;
    notifyListeners();
  }

  static TextStyle appTextStyle = TextStyle(
    color: Colors.red,
  );

  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: 'Cairo',
      brightness: Brightness.light,
      primaryColor: Colors.green,
      textTheme: TextTheme(
        bodyText2: appTextStyle,
        button: appTextStyle,
      ),
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(
          headline6: TextStyle(
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w700,
            fontSize: 24.0,
          ),
        ),
      ),
      scaffoldBackgroundColor: Color(0xFFEEEEEE),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.green,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Color(0xFF666666),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.lime,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
