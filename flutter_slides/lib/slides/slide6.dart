import 'package:flutter/material.dart';
import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter_slides/widgets/geometry/bordered_circle.dart';
import 'package:flutter_slides/widgets/geometry/named_rectangle.dart';
import 'package:flutter_slides/widgets/guidelines/labelled_guideline.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';

class Slide6 extends StatelessWidget {
  const Slide6({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Giving position from Rect',
          textAlign: TextAlign.start,
          style: displaySmall(context),
        ),
        const SizedBox(height: 50),
        TextBox(
          style: headlineMedium(context),
          items: [
            TextBoxItem(text: 'Use  '),
            TextBoxItem(
              text: 'Positioned.fromRect',
              style: codeHeadlineSmall(context),
            ),
            TextBoxItem(text: '  with  '),
            TextBoxItem(
              text: 'Rect.fromCenter()',
              style: codeHeadlineSmall(context),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Text(
          '(0, 0)',
          style: extraBoldHeadlineMedium(context),
        ),
        SizedBox(
          height: 700,
          width: 1000,
          child: Stack(
            fit: StackFit.expand,
            children: [
              const Positioned(
                top: 0,
                bottom: 200,
                left: 50,
                width: 1000,
                child: NamedRectangle(name: 'Stack', color: Colors.white),
              ),
              const Positioned(
                top: 100,
                bottom: 300,
                left: 150,
                width: 800,
                child: NamedRectangle(name: 'Positioned', color: Colors.black),
              ),
              const Positioned(
                top: 100,
                left: 950,
                height: 300,
                child: LabelledGuideline(
                  label: 'height',
                  length: 300,
                  isHorizontal: false,
                  color: Colors.black,
                  reverse: true,
                ),
              ),
              const Positioned(
                top: 400,
                left: 150,
                width: 800,
                child: LabelledGuideline(
                  label: 'width',
                  length: 800,
                  color: Colors.black,
                  reverse: true,
                ),
              ),
              const Positioned(
                top: 250,
                left: 550,
                child: BorderedCircle(
                  width: 5,
                  color: Colors.white,
                  child: SizedBox(
                    width: 10,
                    height: 10,
                  ),
                ),
              ),
              Positioned(
                top: 260,
                left: 500,
                child: Text(
                  'Offset(x, y)',
                  textAlign: TextAlign.center,
                  style: boldHeadlineSmall(context),
                ),
              ),
              const Positioned(
                top: 91,
                left: 141,
                child: BorderedCircle(
                  width: 10,
                  color: Colors.blueAccent,
                  child: SizedBox(
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 160,
                child: Text(
                  '(startX, startY)',
                  textAlign: TextAlign.center,
                  style: boldHeadlineSmall(context)?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
