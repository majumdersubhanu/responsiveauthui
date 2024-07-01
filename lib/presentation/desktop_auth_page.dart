// This class implements the desktop UI of the auth page.

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsiveauthui/shared/riffraff_widgets.dart';

class DesktopAuthPage extends StatelessWidget {
  const DesktopAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            children: [
              const Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(32.0),
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
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1533038590840-1cde6e668a91',
                    alignment: Alignment.center,
                    filterQuality: FilterQuality.medium,
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.noRepeat,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
