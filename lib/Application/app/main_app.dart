import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:godwin_ebri_portfolio/core/routing/routes.dart';
import 'package:godwin_ebri_portfolio/core/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Godwin Ebri',
      localizationsDelegates: const [
        ...GlobalMaterialLocalizations.delegates,
        GlobalWidgetsLocalizations.delegate
      ],
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      //theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: routes,
    );
  }
}
