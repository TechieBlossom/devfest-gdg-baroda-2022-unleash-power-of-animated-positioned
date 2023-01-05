import 'dart:math';

import 'package:devfest_logo/src/widgets/ap.dart';
import 'package:devfest_logo/src/widgets/dot.dart';
import 'package:flutter/material.dart';

class SLowerCase extends StatelessWidget {
  const SLowerCase({
    super.key,
    required this.sw,
    required this.sh,
    required this.animated,
    required this.dotSize,
    required this.spaceForDots,
    required this.actualDotSpace,
    this.startX = 0,
    this.startY = 0,
  });

  final double sw;
  final double sh;
  final int dotSize;
  final int spaceForDots;
  final int actualDotSpace;
  final int startX;
  final int startY;
  final bool animated;

  int get swInt => sw.toInt();

  int get shInt => sh.toInt();

  Random get random => Random();

  Dot get black => Dot.black(size: dotSize);

  List<Offset> get _offsets => List.generate(10, (index) {
    final randomX = random.nextInt(swInt).toDouble() + dotSize;
    final randomY = random.nextInt(shInt).toDouble() + dotSize;
    return Offset(randomX, randomY);
  });

  List<AP> get _allInitialDots => _offsets
      .map((offset) => AP(offset: offset, size: dotSize, child: black))
      .toList();

  List<Offset> get _allFinalDotOffsets => [
        Offset(
          startX.toDouble() + (dotSize * 3.5),
          startY.toDouble() + (dotSize * 2.8),
        ),
        Offset(
          startX.toDouble() + (dotSize * 2.4),
          startY.toDouble() + (dotSize * 2.2),
        ),
        Offset(
          startX.toDouble() + (dotSize * 1.2),
          startY.toDouble() + (dotSize * 1.9),
        ),
        Offset(
          startX.toDouble() + (dotSize * 3.3),
          startY.toDouble() + (dotSize * 0.2),
        ),
        Offset(
          startX.toDouble() + (dotSize * 2.1),
          startY.toDouble() - (dotSize * 0.1),
        ),
        Offset(
          startX.toDouble() + (dotSize * 0.9),
          startY.toDouble() + (dotSize * 0.3),
        ),
        Offset(
          startX.toDouble() + (dotSize * 0.3),
          startY.toDouble() + (dotSize * 1.2),
        ),
        Offset(
          startX.toDouble() + (dotSize * 0.4),
          startY.toDouble() + (dotSize * 4.0),
        ),
        Offset(
          startX.toDouble() + (dotSize * 1.7),
          startY.toDouble() + (dotSize * 4.3),
        ),
        Offset(
          startX.toDouble() + (dotSize * 3.0),
          startY.toDouble() + (dotSize * 4.0),
        ),
      ];

  List<AP> get _allFinalDots => _allFinalDotOffsets
      .map((offset) => AP(offset: offset, size: dotSize, child: black))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (animated) ..._allFinalDots,
        if (!animated) ..._allInitialDots,
      ],
    );
  }
}
