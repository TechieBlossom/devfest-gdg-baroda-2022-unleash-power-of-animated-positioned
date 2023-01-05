import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';
import 'package:flutter/material.dart';

class Slide1 extends StatelessWidget {
  const Slide1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: TextBox(
            items: [
              TextBoxItem(
                text: 'Unleash Power of',
                style: lightDisplayLarge(context),
              ),
              TextBoxItem(text: '\n'),
              TextBoxItem(
                text: 'AnimatedPositioned',
                style: extraBoldDisplayLarge(context),
              ),
              TextBoxItem(text: '\n'),
              TextBoxItem(text: '\n'),
              TextBoxItem(
                text: 'By - Prateek Sharma',
                style: displaySmall(context),
              ),
            ],
            textAlign: TextAlign.start,
          ),
        ),
        Image.asset(
          'assets/images/prateek-sharma-twitter.png',
          width: 450,
        ),
      ],
    );
  }
}
