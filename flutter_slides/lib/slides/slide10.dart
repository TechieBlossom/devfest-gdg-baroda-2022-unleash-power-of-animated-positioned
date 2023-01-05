import 'package:flutter/material.dart';
import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';

class Slide10 extends StatelessWidget {
  const Slide10({super.key});

  final double sw = 1400;
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
              text: 'Symmetrical shapes',
              style: headlineSmall(context),
            ),
          ],
          style: displaySmall(context),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: TextBox(
            items: [
              TextBoxItem(text: 'Placeholder for Indian Flag animation.'),
              TextBoxItem(
                  text:
                      '\n\nA tutorial is created in detail on TechieBlossom YouTube channel.\n'),
              TextBoxItem(
                text: 'https://youtu.be/CGfKtLgXeQg',
                link: 'https://youtu.be/CGfKtLgXeQg',
                style: displaySmall(context)?.copyWith(color: Colors.blue),
              ),
              TextBoxItem(
                  text: '\n\nGitHub Repo for the India Flag animation\n'),
              TextBoxItem(
                text: 'https://github.com/TechieBlossom/indian-flag-animation',
                link: 'https://github.com/TechieBlossom/indian-flag-animation',
                style: displaySmall(context)?.copyWith(color: Colors.blue),
              ),
            ],
            textAlign: TextAlign.center,
            style: displaySmall(context),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
