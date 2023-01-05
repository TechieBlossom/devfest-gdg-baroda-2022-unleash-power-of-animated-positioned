import 'dart:math';

import 'package:devfest_logo/src/widgets/ap.dart';
import 'package:devfest_logo/src/widgets/dot.dart';
import 'package:flutter/material.dart';

class ELowerCase extends StatelessWidget {
  const ELowerCase({
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

  List<Offset> get _offsets => List.generate(11, (index) {
    final randomX = random.nextInt(swInt).toDouble() + dotSize;
    final randomY = random.nextInt(shInt).toDouble() + dotSize;
    return Offset(randomX, randomY);
  });

  List<AP> get _allInitialDots => _offsets
      .map((offset) => AP(offset: offset, size: dotSize, child: black))
      .toList();

  List<Offset> get _allFinalDotOffsets => [
        Offset(
          startX.toDouble() + (dotSize * 3.3),
          startY.toDouble() + (dotSize * 1.8),
        ),
        Offset(
          startX.toDouble() + (dotSize * 2.2),
          startY.toDouble() + (dotSize * 2),
        ),
        Offset(
          startX.toDouble() + (dotSize * 1.1),
          startY.toDouble() + (dotSize * 2),
        ),
        Offset(
          startX.toDouble() + (dotSize * 3.2),
          startY.toDouble() + (dotSize * 0.7),
        ),
        Offset(
          startX.toDouble() + (dotSize * 2.0),
          startY.toDouble() + (dotSize * 0.1),
        ),
        Offset(
          startX.toDouble() + (dotSize * 0.8),
          startY.toDouble() + (dotSize * 0.4),
        ),
        Offset(
          startX.toDouble() + (dotSize * 0.0),
          startY.toDouble() + (dotSize * 1.4),
        ),
        Offset(
          startX.toDouble() + (dotSize * 0.1),
          startY.toDouble() + (dotSize * 2.9),
        ),
        Offset(
          startX.toDouble() + (dotSize * 0.9),
          startY.toDouble() + (dotSize * 4.0),
        ),
        Offset(
          startX.toDouble() + (dotSize * 2.0),
          startY.toDouble() + (dotSize * 4.3),
        ),
        Offset(
          startX.toDouble() + (dotSize * 3.2),
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
