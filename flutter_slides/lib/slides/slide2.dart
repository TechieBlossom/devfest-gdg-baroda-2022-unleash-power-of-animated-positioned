import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';
import 'package:flutter/material.dart';

class Slide2 extends StatelessWidget {
  const Slide2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'What is an Implicit Animation Widget?',
          textAlign: TextAlign.start,
          style: displaySmall(context),
        ),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.only(left: 64.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '- A single widget that manages animation',
                style: headlineMedium(context),
              ),
              const Divider(height: 32, color: Colors.transparent),
              Text(
                '- Animates from initial value to a final value',
                style: headlineMedium(context),
              ),
              const Divider(height: 32, color: Colors.transparent),
              Text(
                '- Value can be color, size, position, opacity and many more',
                style: headlineMedium(context),
              ),
              const Divider(height: 32, color: Colors.transparent),
              TextBox(
                items: [
                  TextBoxItem(
                    text: '- Extends  ',
                    style: headlineMedium(context),
                  ),
                  TextBoxItem(
                    text: 'ImplicitlyAnimatedWidget',
                    style: codeHeadlineSmall(context),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
