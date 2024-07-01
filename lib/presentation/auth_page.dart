// This class will implement something like a layout builder to decide at runtime which layout to use: Desktop or mobile.
import 'package:flutter/material.dart';
import 'package:responsiveauthui/presentation/desktop_auth_page.dart';
import 'package:responsiveauthui/presentation/mobile_auth_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 800) {
            return const MobileAuthPage();
          } else {
            return const DesktopAuthPage();
          }
        },
      ),
    );
  }
}
