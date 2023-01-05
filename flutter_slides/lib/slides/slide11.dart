import 'dart:math';

import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter_slides/widgets/geometry/bordered_circle.dart';
import 'package:flutter_slides/widgets/guidelines/labelled_guideline.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';
import 'package:flutter/material.dart';

class Slide11 extends StatefulWidget {
  const Slide11({super.key});

  @override
  State<Slide11> createState() => _Slide11State();
}

class _Slide11State extends State<Slide11> {
  final double sw = 1400;

  final double sh = 700;

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextBox(
          items: [
            TextBoxItem(text: 'Steps to create Indian Flag'),
          ],
          style: displaySmall(context),
        ),
        Expanded(
          child: Stepper(
            steps: _steps(
              6,
              [
                _step1Content,
                _step2Content,
                _step3Content,
                _step4Content,
                _step5Content,
                _step6Content,
              ],
            ),
            currentStep: _currentStep,
            type: StepperType.vertical,
            controlsBuilder: (_, __) => const SizedBox.shrink(),
            onStepContinue: null,
            onStepCancel: null,
            onStepTapped: (stepIndex) =>
                setState(() => _currentStep = stepIndex),
          ),
        ),
      ],
    );
  }

  final _stepTitles = [
    'Create dot and place it somewhere',
    'Define subject width and subject height',
    'Draw top line & follow same for other lines',
    'Find center and radius to draw outer circle',
    'Draw inner circles',
    'Create same number of random dots',
  ];

  Widget _buildContent(Widget child) {
    return Align(
      alignment: Alignment.centerLeft,
      child: child,
    );
  }

  Widget get _step1Content => _buildContent(
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/screenshots/1_dot.png',
                width: 400,
              ),
              const SizedBox.square(dimension: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/screenshots/1_dot_code_1.png',
                    width: 700,
                  ).addLabel(context, 'dot.dart'),
                  const SizedBox.square(dimension: 20),
                  Image.asset(
                    'assets/screenshots/1_dot_code_2.png',
                    width: 600,
                  ).addLabel(context, 'ap.dart'),
                  const SizedBox.square(dimension: 20),
                  Image.asset(
                    'assets/screenshots/1_dot_code_3.png',
                    width: 430,
                  ).addLabel(context, 'indian_flag.dart'),
                ],
              ),
            ],
          ),
        ),
      );

  Widget get _step2Content => _buildContent(
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0, bottom: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/screenshots/10_all_inner_circles.png',
                      width: 400,
                    ),
                    const Positioned(
                      top: 200,
                      left: 0,
                      right: 0,
                      child: LabelledGuideline(
                        label: 'subject width',
                        color: Colors.black,
                        reverse: true,
                        length: 360,
                      ),
                    ),
                    Positioned(
                      top: 25,
                      left: 280,
                      height: 240,
                      child: LabelledGuideline.vertical(
                        label: 'subject\nheight',
                        color: Colors.black,
                        reverse: true,
                        length: 240,
                      ),
                    ),
                    const Positioned(
                      top: 25,
                      left: 20,
                      child: BorderedCircle(
                        width: 5,
                        color: Colors.black,
                        child: SizedBox(
                          width: 10,
                          height: 10,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 35,
                      left: 20,
                      child: Text(
                        '(startX, startY)',
                        textAlign: TextAlign.center,
                        style: boldHeadlineSmall(context)?.copyWith(
                            fontStyle: FontStyle.italic, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const SizedBox.square(dimension: 20),
                Image.asset(
                  'assets/screenshots/1_dot_code_4.png',
                  width: 850,
                ).addLabel(context, 'indian_flag.dart'),
              ],
            ),
          ),
        ),
      );

  Widget get _step3Content => _buildContent(
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/screenshots/2_line.png',
                width: 400,
              ),
              const SizedBox.square(dimension: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/screenshots/2_line_code_1.png',
                    width: 800,
                  ).addLabel(context,
                      'calculate number of dots in width and generate offsets for top line'),
                  const SizedBox.square(dimension: 20),
                  Image.asset(
                    'assets/screenshots/2_line_code_2.png',
                    width: 930,
                  ).addLabel(context, 'generate saffron dots from offsets'),
                ],
              ),
              const SizedBox.square(dimension: 100),
              Image.asset(
                'assets/screenshots/3_rectangle.png',
                width: 400,
              ),
              const SizedBox.square(dimension: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/screenshots/3_rectangle_code_1.png',
                    width: 800,
                  ).addLabel(context,
                      'calculate number of rows per color and generate offsets'),
                  const SizedBox.square(dimension: 20),
                  Image.asset(
                    'assets/screenshots/3_rectangle_code_2.png',
                    width: 910,
                  ).addLabel(context, 'repeat top line by changing y position'),
                  const SizedBox.square(dimension: 20),
                  Image.asset(
                    'assets/screenshots/3_rectangle_code_3.png',
                    width: 950,
                  ).addLabel(context, 'indian_flag.dart'),
                ],
              ),
              const SizedBox.square(dimension: 200),
              Image.asset(
                'assets/screenshots/4_one_more_rectangle.png',
                width: 400,
              ),
              const SizedBox.square(dimension: 20),
              Image.asset(
                'assets/screenshots/4_one_more_rectangle_code_1.png',
                width: 950,
              ).addLabel(context,
                  'like saffron, create white dots by changing y position'),
              const SizedBox.square(dimension: 300),
              Image.asset(
                'assets/screenshots/5_all_rectangles.png',
                width: 400,
              ),
              const SizedBox.square(dimension: 20),
              Image.asset(
                'assets/screenshots/5_all_rectangles_code_1.png',
                width: 950,
              ).addLabel(context,
                  'like saffron and white, create green dots by changing y position'),
            ],
          ),
        ),
      );

  Widget get _circleExplanation {
    const double width = 1400, height = 500, centerSize = 10;
    const margin = 20;
    const Offset center = Offset(
      width / 3,
      height / 2,
    );
    const diameter = (height - (2 * margin));
    const radius = diameter / 2;
    return Stack(
      children: [
        const SizedBox(
          width: width,
          height: height,
          child: ColoredBox(color: Colors.white),
        ),
        Positioned.fromRect(
          rect: Rect.fromCenter(
              center: center, width: diameter, height: diameter),
          child: const BorderedCircle(width: 5, color: Colors.black),
        ),
        Positioned.fromRect(
          rect: Rect.fromCenter(
            center: center,
            width: centerSize,
            height: centerSize,
          ),
          child: const BorderedCircle(
            width: centerSize / 2,
            color: Colors.black,
          ),
        ),
        Positioned.fromRect(
          rect: Rect.fromCenter(
            center: center + const Offset(71, -92),
            width: radius,
            height: 46,
          ),
          child: Transform.rotate(
            angle: (pi * 2 * -45 / 360),
            child: const LabelledGuideline(
              label: 'radius',
              color: Colors.blue,
              length: diameter,
              guidelineThickness: 2,
            ),
          ),
        ),
        Positioned.fromRect(
          rect: Rect.fromCenter(
            center: Offset(
              (radius - centerSize / 4) * cos(pi * 2 * -45 / 360) + center.dx,
              (radius - centerSize / 4) * sin(pi * 2 * -45 / 360) + center.dy,
            ),
            width: centerSize * 2,
            height: centerSize * 2,
          ),
          child: const BorderedCircle(
            color: Colors.blueAccent,
            width: centerSize,
          ),
        ),
        Positioned.fromRect(
          rect: Rect.fromCenter(
            center: Offset(
              (radius - centerSize / 4) * cos(pi * 2 * -45 / 360) +
                  center.dx +
                  40,
              (radius - centerSize / 4) * sin(pi * 2 * -45 / 360) +
                  center.dy +
                  10,
            ),
            width: 100,
            height: 60,
          ),
          child: Text(
            '(x, y)',
            textAlign: TextAlign.center,
            style: headlineSmall(context)?.copyWith(
                fontStyle: FontStyle.italic, color: Colors.blueAccent),
          ),
        ),
        Positioned(
          top: center.dy - 8,
          left: center.dx - 1,
          child: LabelledGuideline(
            label: 'x',
            color: Colors.blue,
            length: sqrt(pow(radius, 2) / 2) + 50,
            guidelineThickness: 4,
            reverse: true,
          ),
        ),
        Positioned(
          top: (radius - centerSize / 4) * sin(pi * 2 * -90 / 360) +
              center.dy +
              65,
          left: center.dx + sqrt(pow(radius, 2) / 2) - centerSize,
          child: LabelledGuideline.vertical(
            label: 'y',
            color: Colors.blue,
            length: sqrt(pow(radius, 2) / 2) + 50,
            guidelineThickness: 4,
            reverse: true,
          ),
        ),
        Positioned(
          top: center.dy - 30,
          left: center.dx + 20,
          child: Text(
            '60 °',
            textAlign: TextAlign.center,
            style: headlineSmall(context)?.copyWith(
              fontStyle: FontStyle.italic,
              color: Colors.blueAccent,
            ),
          ),
        ),
        Positioned(
          left: diameter * 1.8,
          top: 100,
          child: TextBox(
            items: [
              TextBoxItem(
                text: 'cos 60° = x/radius',
                style: displaySmall(context)?.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.blueAccent,
                ),
              ),
              TextBoxItem(text: '\n'),
              TextBoxItem(
                text: 'x = radius * cos 60°',
                style: displaySmall(context)?.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900,
                  color: Colors.blueAccent,
                ),
              ),
              TextBoxItem(text: '\n'),
              TextBoxItem(text: '\n'),
              TextBoxItem(text: '\n'),
              TextBoxItem(text: '\n'),
              TextBoxItem(
                text: 'sin 60° = y/radius',
                style: displaySmall(context)?.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              TextBoxItem(text: '\n'),
              TextBoxItem(
                text: 'y = radius * sin 60°',
                style: displaySmall(context)?.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget get _step4Content => _buildContent(
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox.square(dimension: 100),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/screenshots/6_center.png',
                    width: 400,
                  ),
                  const SizedBox.square(dimension: 20),
                  Image.asset(
                    'assets/screenshots/6_center_code_1.png',
                    width: 900,
                  ).addLabel(context, 'indian_flag.dart'),
                ],
              ),
              const SizedBox.square(dimension: 150),
              _circleExplanation,
              const SizedBox.square(dimension: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/screenshots/7_outer_circle.png',
                    width: 400,
                  ),
                  const SizedBox.square(dimension: 20),
                  Image.asset(
                    'assets/screenshots/7_outer_circle_code_1.png',
                    width: 1100,
                  ).addLabel(context,
                      'using trigonometry to place dots along circle circumference'),
                ],
              ),
              const SizedBox.square(dimension: 100),
            ],
          ),
        ),
      );

  Widget get _step5Content => _buildContent(
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/screenshots/8_inner_circle.png',
                    width: 400,
                  ),
                  const SizedBox.square(dimension: 20),
                  Image.asset(
                    'assets/screenshots/9_two_inner_circles_code_1.png',
                    width: 1200,
                  ).addLabel(context,
                      'inner circle with 3/4 fraction of radius away from outer circle'),
                ],
              ),
              const SizedBox.square(dimension: 250),
              Row(
                children: [
                  Image.asset(
                    'assets/screenshots/9_two_inner_circles.png',
                    width: 400,
                  ),
                  const SizedBox.square(dimension: 20),
                  Image.asset(
                    'assets/screenshots/9_two_inner_circles_code_2.png',
                    width: 1200,
                  ).addLabel(context,
                      'inner circle with 1/2 fraction of radius away from outer circle'),
                ],
              ),
              const SizedBox.square(dimension: 350),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/screenshots/10_all_inner_circles.png',
                    width: 400,
                  ),
                  const SizedBox.square(dimension: 20),
                  Image.asset(
                    'assets/screenshots/10_all_inner_circles_code_1.png',
                    width: 1250,
                  ).addLabel(context,
                      'generalise the fraction by dividing ring number by rows per color'),
                ],
              ),
              const SizedBox.square(dimension: 200),
            ],
          ),
        ),
      );

  Widget get _step6Content => _buildContent(
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/screenshots/11_random.png',
                    width: 400,
                  ),
                  const SizedBox.square(dimension: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/screenshots/11_random_code_1.png',
                        width: 1200,
                      ).addLabel(context,
                          'generate random x and random y values using screen width and height'),
                      const SizedBox.square(dimension: 100),
                      Image.asset(
                        'assets/screenshots/11_random_code_2.png',
                        width: 600,
                      ).addLabel(context,
                          'switch between initial and final AP widgets'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  List<Step> _steps(int count, List<Widget> contents) {
    return List.generate(
      count,
      (index) => Step(
        isActive: _currentStep == index,
        title: Text(
          _stepTitles[index],
          style: _currentStep == index
              ? headlineSmall(context)
              : headlineSmall(context)?.copyWith(color: Colors.white10),
        ),
        content: contents[index],
        // content: Align(
        //   alignment: Alignment.centerLeft,
        //   child: SingleChildScrollView(
        //     scrollDirection: Axis.horizontal,
        //     child: Row(
        //       children: [
        //         for (int i = 0; i < paths[index].length; i++)
        //           Image.asset(
        //             'assets/screenshots/${paths[index][i]}.png',
        //             width: 400,
        //           ),
        //         Image.asset(
        //           'assets/screenshots/1_dot_code_1.png',
        //           width: 320,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}

extension ImageExtension on Widget {
  Widget addLabel(BuildContext context, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: italicTitleLarge(context),
        ),
        const SizedBox.square(dimension: 5),
        this,
      ],
    );
  }
}
