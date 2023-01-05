import 'package:flutter/material.dart';
import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';

class Slide12 extends StatelessWidget {
  const Slide12({super.key});

  final double sw = 700;
  final double sh = 700;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextBox(
          items: [
            TextBoxItem(text: 'Create eye-catchy animations\n'),
            TextBoxItem(
              text: 'Asymmetrical shapes',
              style: headlineSmall(context),
            ),
          ],
          style: displaySmall(context),
        ),
        const Spacer(),
        Center(
          child: TextBox(
            items: [
              TextBoxItem(text: 'Placeholder for India Map animation'),
              TextBoxItem(
                  text: '\n\nPlease refer slide in '
                      '\nrecording in presentation video.'),
            ],
            style: displaySmall(context),
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
