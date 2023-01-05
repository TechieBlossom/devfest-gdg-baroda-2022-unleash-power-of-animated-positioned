import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter/material.dart';

class Slide13 extends StatelessWidget {
  const Slide13({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Further use cases',
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
                '- An education app that demonstrates relations between shapes',
                style: headlineMedium(context),
              ),
              const Divider(height: 32, color: Colors.transparent),
              Text(
                '- A digital clock where digits transition from one digit to other',
                style: headlineMedium(context),
              ),
              const Divider(height: 32, color: Colors.transparent),
              Text(
                '- Simulate a soccer match',
                style: headlineMedium(context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
