import 'package:flutter/material.dart';
import 'package:responsiveauthui/presentation/auth_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Authentication UI',
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
