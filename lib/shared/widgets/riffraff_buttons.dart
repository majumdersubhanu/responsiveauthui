import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class RiffRaffTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const RiffRaffTextButton({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Text(
        text,
        style: GoogleFonts.inter(
          color: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}

class RiffRaffButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final Color backgroundColor;
  final Color foregroundColor;
  const RiffRaffButton({
    super.key,
    required this.label,
    this.onTap,
    this.backgroundColor = const Color(0xFF2C2C2C),
    this.foregroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            color: foregroundColor,
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}