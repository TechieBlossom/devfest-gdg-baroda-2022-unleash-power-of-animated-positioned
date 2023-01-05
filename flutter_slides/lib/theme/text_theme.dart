import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final codeFont = GoogleFonts.firaCodeTextTheme();
final baseFont = GoogleFonts.signikaNegativeTextTheme();

const _letterSpacing = 0.5;

TextStyle? lightDisplayLarge(BuildContext context) =>
    Theme.of(context).textTheme.displayLarge?.copyWith(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w100,
          fontSize: 78,
          letterSpacing: _letterSpacing,
        );

TextStyle? extraBoldDisplayLarge(BuildContext context) =>
    Theme.of(context).textTheme.displayLarge?.copyWith(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w900,
          letterSpacing: _letterSpacing,
        );

TextStyle? displaySmall(BuildContext context) =>
    Theme.of(context).textTheme.displaySmall?.copyWith(
          color: Theme.of(context).primaryColor,
          letterSpacing: _letterSpacing,
        );

TextStyle? headlineMedium(BuildContext context) =>
    Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: Theme.of(context).primaryColor,
          letterSpacing: _letterSpacing,
        );

TextStyle? codeHeadlineSmall(BuildContext context) =>
    codeFont.headlineSmall?.copyWith(
          color: Theme.of(context).primaryColor,
          backgroundColor: Colors.blueGrey.withOpacity(0.2),
          letterSpacing: 2.0,
          fontSize: 24,
          fontStyle: FontStyle.italic,
        );

TextStyle? codeDisplaySmall(BuildContext context) =>
    codeFont.displaySmall?.copyWith(
      color: Theme.of(context).primaryColor,
      backgroundColor: Colors.blueGrey.withOpacity(0.2),
      letterSpacing: 2.0,
      fontSize: 32,
      fontStyle: FontStyle.italic,
    );

TextStyle? headlineSmall(BuildContext context) =>
    Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: Theme.of(context).primaryColor,
          letterSpacing: _letterSpacing,
        );

TextStyle? boldHeadlineSmall(BuildContext context) =>
    Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w600,
          letterSpacing: _letterSpacing,
        );

TextStyle? italicHeadlineSmall(BuildContext context) =>
    Theme.of(context).textTheme.headlineSmall?.copyWith(
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
      letterSpacing: _letterSpacing,
    );

TextStyle? extraBoldHeadlineMedium(BuildContext context) =>
    Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w900,
          letterSpacing: _letterSpacing,
        );

TextStyle? italicHeadlineMedium(BuildContext context) =>
    Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: Theme.of(context).primaryColor,
          fontStyle: FontStyle.italic,
          letterSpacing: _letterSpacing,
        );

TextStyle? italicTitleLarge(BuildContext context) =>
    Theme.of(context).textTheme.titleLarge?.copyWith(
      color: Theme.of(context).primaryColor,
      fontStyle: FontStyle.italic,
      letterSpacing: _letterSpacing,
    );
