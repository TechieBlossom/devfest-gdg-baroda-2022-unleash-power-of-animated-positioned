import 'dart:math';

import 'package:devfest_logo/src/widgets/ap.dart';
import 'package:devfest_logo/src/widgets/dot.dart';
import 'package:flutter/material.dart';

class FLowerCase extends StatelessWidget {
  const FLowerCase({
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

  final int spaceForDots;
  final int actualDotSpace;
  final int startX;
  final int startY;
  final double sw;
  final double sh;
  final int dotSize;
  final bool animated;

  int get swInt => sw.toInt();

  int get shInt => sh.toInt();

  Random get random => Random();

  Dot get black => Dot.black(size: dotSize);

  List<Offset> get _offsets => List.generate(14, (index) {
    final randomX = random.nextInt(swInt).toDouble() + dotSize;
    final randomY = random.nextInt(shInt).toDouble() + dotSize;
        return Offset(randomX, randomY);
      });

  List<AP> get _allInitialDots => _offsets
      .map((offset) => AP(offset: offset, size: dotSize, child: black))
      .toList();

  List<Offset> get _allFinalDotOffsets => [
        Offset(startX.toDouble(), startY.toDouble()),
        Offset(startX.toDouble() + (dotSize * 1.1), startY.toDouble()),
        Offset(startX.toDouble() + (dotSize * 2.2), startY.toDouble()),
        Offset(startX.toDouble() + (dotSize * 3.3), startY.toDouble()),
        Offset(startX.toDouble() + (dotSize * 4.4), startY.toDouble()),
        Offset(
          startX.toDouble() + (dotSize * 4.6),
          startY.toDouble() - (dotSize * 2.2),
        ),
        Offset(
          startX.toDouble() + (dotSize * 3.5),
          startY.toDouble() - (dotSize * 2.1),
        ),
        Offset(
          startX.toDouble() + (dotSize * 2.6),
          startY.toDouble() - (dotSize * 1.3),
        ),
        Offset(
          startX.toDouble() + (dotSize * 2.0),
          startY.toDouble() + (dotSize * 1.0),
        ),
        Offset(
          startX.toDouble() + (dotSize * 1.8),
          startY.toDouble() + (dotSize * 2.5),
        ),
        Offset(
          startX.toDouble() + (dotSize * 1.6),
          startY.toDouble() + (dotSize * 4.0),
        ),
        Offset(
          startX.toDouble() + (dotSize * 1.3),
          startY.toDouble() + (dotSize * 5.5),
        ),
        Offset(
          startX.toDouble() + (dotSize * 0.2),
          startY.toDouble() + (dotSize * 6.2),
        ),
        Offset(
          startX.toDouble() - (dotSize * 1.0),
          startY.toDouble() + (dotSize * 6.2),
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
