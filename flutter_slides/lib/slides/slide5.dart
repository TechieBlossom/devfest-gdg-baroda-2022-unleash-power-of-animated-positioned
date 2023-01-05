import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';
import 'package:flutter/material.dart';

class Slide5 extends StatelessWidget {
  const Slide5({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'What is AnimatedPositioned widget?',
          textAlign: TextAlign.start,
          style: displaySmall(context),
        ),
        const SizedBox(height: 50),
        Text(
          'Animates child widget from one position to other position',
          style: headlineMedium(context),
        ),
        const SizedBox(height: 100),
        const Expanded(child: _AnimatedBoxExample()),
      ],
    );
  }
}

class _AnimatedBoxExample extends StatefulWidget {
  const _AnimatedBoxExample({Key? key}) : super(key: key);

  @override
  State<_AnimatedBoxExample> createState() => _AnimatedBoxExampleState();
}

class _AnimatedBoxExampleState extends State<_AnimatedBoxExample> {
  bool isLeftAligned = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const Positioned(
          top: 0,
          height: 240,
          width: 1100,
          child: BorderedRectangle(color: Colors.white),
        ),
        AnimatedPositioned(
          left: isLeftAligned ? 100 : 800,
          top: 20,
          duration: const Duration(seconds: 2),
          curve: Curves.decelerate,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isLeftAligned = !isLeftAligned;
              });
            },
            child: const SizedBox.square(
              dimension: 200,
              child: ColoredBox(color: Colors.white),
            ),
          ),
        ),
        AnimatedPositioned(
          left: isLeftAligned ? 100 : 800,
          top: 300,
          duration: const Duration(seconds: 2),
          curve: Curves.decelerate,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isLeftAligned = !isLeftAligned;
              });
            },
            child: TextBox(
              items: [
                TextBoxItem(text: 'Top: 20'),
                TextBoxItem(text: '\n'),
                TextBoxItem(text: 'Left: ${isLeftAligned ? 100 : 800}'),
              ],
              style: headlineSmall(context),
            ),
          ),
        ),
      ],
    );
  }
}

class BorderedRectangle extends StatelessWidget {
  const BorderedRectangle({
    super.key,
    this.child,
    this.width,
    this.color,
  });

  final Widget? child;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          width: width ?? 1,
          color: color ?? Colors.black,
        ),
      ),
      child: child,
    );
  }
}
