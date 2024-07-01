import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';


class RiffRaffTextField extends StatelessWidget {
  final String label;
  final String? placeholder;
  final bool isObscure;
  const RiffRaffTextField({
    super.key,
    required this.label,
    this.placeholder,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
        ),
        CupertinoTextField(
          obscureText: isObscure,
          cursorColor: Theme.of(context).colorScheme.onSurface,
          clearButtonMode: OverlayVisibilityMode.editing,
          placeholder: placeholder,
        ),
      ],
    );
  }
}