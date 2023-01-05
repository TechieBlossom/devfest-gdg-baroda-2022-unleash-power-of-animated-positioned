import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/slides/base_slide.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';

class TextBox extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        style: style,
        children: [
          for (int i = 0; i < items.length; i++)
            TextSpan(
              text: items[i].text,
              style: items[i].style,
              recognizer:
                  (items[i].link == null) ? null : TapGestureRecognizer()
                    ?..onTap = () {
                      if (items[i].link != null) {
                        final Uri uri = Uri.parse(items[i].link!);
                        openLink(uri);
                      }
                    },
            ),
        ],
      ),
    );
  }
}
