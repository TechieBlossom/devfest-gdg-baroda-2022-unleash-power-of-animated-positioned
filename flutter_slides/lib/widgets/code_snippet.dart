import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CodeSnippet extends StatelessWidget {
  const CodeSnippet({super.key, required this.code});

  final String code;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white70, width: 1),
        color: Colors.white10,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      child: Text(
        code,
        style: codeFont.headline1?.copyWith(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
