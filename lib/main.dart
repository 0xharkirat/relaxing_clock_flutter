import 'package:flutter/material.dart';
import 'package:relaxing_clock_flutter/src/views/screens/home_screen.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp(
      title: 'Relaxing Clock',
      theme: ShadThemeData(
        colorScheme: ShadNeutralColorScheme.dark(),
        brightness: Brightness.dark,
      ),

      home: const HomeScreen(),
    );
  }
}
