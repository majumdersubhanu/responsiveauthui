// This class implements the mobile UI of the auth page.

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsiveauthui/shared/riffraff_widgets.dart';

class MobileAuthPage extends StatelessWidget {
  const MobileAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFDFDFD),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RiffRaffLogo(),
                      Gap(16),
                      RiffRaffDivider(),
                      Gap(16),
                      Greeting(),
                      Gap(32),
                      RiffRaffTextField(
                        label: 'Email',
                        placeholder: 'email@domain.xyz',
                      ),
                      Gap(16),
                      RiffRaffTextField(
                        label: 'Password',
                        isObscure: true,
                      ),
                      Gap(16),
                      RiffRaffTextButton(
                        text: 'Forgot password?',
                      ),
                      Gap(32),
                      RiffRaffButton(
                        label: 'Login',
                      ),
                      Gap(32),
                      RiffRaffDividerWithOr(),
                      Gap(32),
                      RiffRaffButton(
                        label: 'Continue with Google',
                        backgroundColor: Color(0xFFE3E3E3),
                        foregroundColor: Color(0xFF1E1E1E),
                      ),
                      Gap(16),
                      RiffRaffButton(
                        label: 'Continue with Facebook',
                        backgroundColor: Color(0xFFE3E3E3),
                        foregroundColor: Color(0xFF1E1E1E),
                      ),
                      Gap(32),
                      RiffRaffFooter(),
                    ],
                  ),
          ),
      ),
    );
  }
}
