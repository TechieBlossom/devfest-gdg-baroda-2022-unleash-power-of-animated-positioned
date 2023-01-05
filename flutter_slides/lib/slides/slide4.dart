import 'package:flutter/material.dart';
import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter_slides/widgets/geometry/bordered_circle.dart';
import 'package:flutter_slides/widgets/geometry/named_rectangle.dart';
import 'package:flutter_slides/widgets/guidelines/labelled_guideline.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';

class Slide4 extends StatelessWidget {
  const Slide4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'What is Positioned widget?',
          textAlign: TextAlign.start,
          style: displaySmall(context),
        ),
        const SizedBox(height: 50),
        TextBox(
          items: [
            TextBoxItem(
                text: 'Positions a widget with respect to its parent - '),
            TextBoxItem(
              text: 'Stack',
              style: codeDisplaySmall(context),
            ),
          ],
          textAlign: TextAlign.start,
          style: headlineMedium(context),
        ),
        const SizedBox(height: 50),
        SizedBox(
          height: 700,
          width: 1000,
          child: Stack(
            fit: StackFit.expand,
            children: [
              const Positioned(
                top: 0,
                bottom: 200,
                left: 0,
                width: 1000,
                child: NamedRectangle(name: 'Stack', color: Colors.white),
              ),
              const Positioned(
                top: 100,
                bottom: 300,
                left: 100,
                width: 800,
                child: NamedRectangle(name: 'Positioned', color: Colors.black),
              ),
              const Positioned(
                top: 5,
                left: 500,
                child: LabelledGuideline(
                  label: 'top',
                  length: 90,
                  color: Colors.black,
                  isHorizontal: false,
                  reverse: true,
                ),
              ),
              const Positioned(
                bottom: 5,
                top: 200,
                left: 500,
                child: LabelledGuideline(
                  label: 'bottom',
                  length: 90,
                  isHorizontal: false,
                  color: Colors.black,
                  reverse: true,
                ),
              ),
              const Positioned(
                top: 200,
                left: 5,
                child: LabelledGuideline(
                  label: 'left',
                  color: Colors.black,
                  length: 90,
                ),
              ),
              const Positioned(
                top: 200,
                left: 905,
                width: 90,
                child: LabelledGuideline(
                  label: 'right',
                  color: Colors.black,
                  length: 90,
                ),
              ),
              const Positioned(
                top: 90,
                left: 90,
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
                left: 110,
                child: Text(
                  '(startX, startY)',
                  textAlign: TextAlign.center,
                  style: boldHeadlineSmall(context)?.copyWith(
                      fontStyle: FontStyle.italic, color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
