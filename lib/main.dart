import 'package:challenge01/core/theme/app_theme.dart';
import 'package:challenge01/presenter/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Floripa',
      theme: ThemeData(primaryColor: ThemeColors.primaryColor, fontFamily: 'PTSans'),
      home: const LoginPage(),
    );
  }
}
