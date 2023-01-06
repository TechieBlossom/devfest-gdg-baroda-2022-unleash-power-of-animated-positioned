import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/slides/base_slide.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';

class TextBox extends StatefulWidget {
  const TextBox({
    super.key,
    required this.items,
    this.textAlign = TextAlign.start,
    this.style,
  });

  final List<TextBoxItem> items;
  final TextAlign textAlign;
  final TextStyle? style;

  @override
  State<TextBox> createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  late final TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer();
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: widget.textAlign,
      text: TextSpan(
        style: widget.style,
        children: [
          for (int i = 0; i < widget.items.length; i++)
            TextSpan(
              text: widget.items[i].text,
              style: widget.items[i].style,
              recognizer:
                  (widget.items[i].link == null) ? null : _tapGestureRecognizer
                    ?..onTap = () {
                      if (widget.items[i].link != null) {
                        final Uri uri = Uri.parse(widget.items[i].link!);
                        openLink(uri);
                      }
                    },
            ),
        ],
      ),
    );
  }
}
