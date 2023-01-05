import 'package:flutter/material.dart';
import 'package:flutter_slides/snippets.dart';
import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter_slides/widgets/code_snippet.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';

class Slide7 extends StatefulWidget {
  const Slide7({super.key});

  @override
  State<Slide7> createState() => _Slide7State();
}

class _Slide7State extends State<Slide7> {
  final double sw = 550;

  // With ratio 105 x 68 for length by width = 1.54
  final double sh = 847;
  bool showCircle = false;

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
                  text: 'Positioned.fromRect',
                  style: codeDisplaySmall(context),
                ),
                TextBoxItem(text: '\nto create a soccer ground'),
              ],
              style: displaySmall(context),
            ),
            const SizedBox(height: 50),
            GestureDetector(
                onTap: () {
                  setState(() {
                    showCircle = true;
                  });
                },
                child: const CodeSnippet(code: positionFromRect)),
            const SizedBox(height: 50),
            AnimatedOpacity(
              opacity: showCircle ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: const CodeSnippet(code: positionFromRectCircle),
            ),
          ],
        ),
        const SizedBox(width: 100),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Center(
            child: TextBox(
              items: [
                TextBoxItem(text: 'Placeholder for soccer ground.'),
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
