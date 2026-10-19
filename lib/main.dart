import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/contract_signing/contract_signing_screen.dart';

void main() {
  runApp(const JHomesApp());
}

class JHomesApp extends StatelessWidget {
  const JHomesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JHomes',
      theme: AppTheme.lightTheme,
      home: const ContractSigningScreen(), // Starts at Screen 1
    );
  }
}