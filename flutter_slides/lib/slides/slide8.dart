import 'package:flutter/material.dart';
import 'package:flutter_slides/snippets.dart';
import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter_slides/widgets/code_snippet.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';

class Slide8 extends StatefulWidget {
  const Slide8({super.key});

  @override
  State<Slide8> createState() => _Slide8State();
}

class _Slide8State extends State<Slide8> {
  final double sw = 550;

  // With ratio 105 x 68 for length by width = 1.54
  final double sh = 847;

  bool animate = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBox(
              items: [
                TextBoxItem(text: 'Using  '),
                TextBoxItem(
                  text: 'AnimatedPositioned.fromRect',
                  style: codeDisplaySmall(context),
                ),
              ],
              style: displaySmall(context),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                setState(() {
                  animate = !animate;
                });
              },
              child: animate
                  ? const CodeSnippet(code: animatedPositionedFromRectCircle2)
                  : const CodeSnippet(code: animatedPositionedFromRectCircle),
            ),
            const SizedBox(height: 50),
            if (animate) const CodeSnippet(code: offsetChange)
          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Center(
            child: TextBox(
              items: [
                TextBoxItem(
                    text:
                        'Placeholder for soccer ground with animated circle.'),
                TextBoxItem(
                    text: '\n\nPlease refer slide in '
                        '\nrecording in presentation video.'),
              ],
              style: displaySmall(context),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
