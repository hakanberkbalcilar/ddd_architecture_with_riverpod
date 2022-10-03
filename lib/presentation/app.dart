import 'package:flutter/material.dart';
import 'package:riverpod_sample/presentation/screens/navigation/view/navigation_view.dart';
import 'package:riverpod_sample/presentation/themes/classic_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ClassicTheme.light,
      darkTheme: ClassicTheme.dark,
      themeMode: ThemeMode.light,
      home: const NavigationView(),
    );
  }
}
