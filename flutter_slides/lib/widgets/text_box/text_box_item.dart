import 'package:flutter/painting.dart';

class TextBoxItem {
  final String text;
  final TextStyle? style;
  final String? link;

  TextBoxItem({
    required this.text,
    this.style,
    this.link,
  });
}
