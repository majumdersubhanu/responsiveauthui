import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';


class Greeting extends StatelessWidget {
  const Greeting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Continue to account',
          style: GoogleFonts.inter(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        const Gap(10),
        InkWell(
          onTap: () {},
          child: RichText(
            text: TextSpan(
                text: 'Please enter your credentials to log in or ',
                style: GoogleFonts.inter(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: 'Sign up',
                    style: GoogleFonts.inter(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}

class RiffRaffDivider extends StatelessWidget {
  const RiffRaffDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0xFFEEEBEB),
    );
  }
}

class RiffRaffLogo extends StatelessWidget {
  const RiffRaffLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.ideographic,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.add_box,
          size: 35.5,
        ),
        const Gap(4),
        Text(
          'RiffRaff Inventory',
          style: GoogleFonts.inter(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}

class RiffRaffFooter extends StatelessWidget {
  const RiffRaffFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const Divider(
          color: Color(0xFFEEEBEB),
        ),
        const Gap(8),
        Text(
          'Designed by RiffRaff in India',
          style: GoogleFonts.inter(
            color: const Color(0xFF999696),
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class RiffRaffDividerWithOr extends StatelessWidget {
  const RiffRaffDividerWithOr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: RiffRaffDivider()),
        const Gap(8),
        Text(
          'Or',
          style: GoogleFonts.inter(
            color: const Color(0xFF999696),
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
        ),
        const Gap(8),
        const Expanded(child: RiffRaffDivider()),
      ],
    );
  }
}

