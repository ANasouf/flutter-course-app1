import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'routes.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppTheme(),
      child: Consumer<AppTheme>(
        builder: (_, appTheme, __) {
          return MaterialApp(
            themeMode: appTheme.isDark ? ThemeMode.dark : ThemeMode.light,
            darkTheme: AppTheme.darkTheme(),
            theme: AppTheme.lightTheme(),
            onGenerateRoute: Routes.onGenerateRoute,
          );
        },
      ),
    );
  }
}
