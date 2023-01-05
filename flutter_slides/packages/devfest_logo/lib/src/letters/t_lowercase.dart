import 'dart:math';

import 'package:devfest_logo/src/widgets/ap.dart';
import 'package:devfest_logo/src/widgets/dot.dart';
import 'package:flutter/material.dart';

class TLowerCase extends StatelessWidget {
  const TLowerCase({
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

  List<Offset> get _offsets => List.generate(9, (index) {
    final randomX = random.nextInt(swInt).toDouble() + dotSize;
    final randomY = random.nextInt(shInt).toDouble() + dotSize;
    return Offset(randomX, randomY);
  });

  List<AP> get _allInitialDots => _offsets
      .map((offset) => AP(offset: offset, size: dotSize, child: black))
      .toList();

  List<Offset> get _allFinalDotOffsets => [
        Offset(
          startX.toDouble() + (dotSize * 1.2),
          startY.toDouble(),
        ),
        Offset(
          startX.toDouble() + (dotSize * 3.4),
          startY.toDouble(),
        ),
        Offset(
          startX.toDouble() + (dotSize * 4.6),
          startY.toDouble(),
        ),
        Offset(
          startX.toDouble() + (dotSize * 2.4),
          startY.toDouble() - (dotSize * 1.3),
        ),
        Offset(
          startX.toDouble() + (dotSize * 2.4),
          startY.toDouble(),
        ),
        Offset(
          startX.toDouble() + (dotSize * 2.4),
          startY.toDouble() + (dotSize * 1.5),
        ),
        Offset(
          startX.toDouble() + (dotSize * 2.4),
          startY.toDouble() + (dotSize * 3.0),
        ),
        Offset(
          startX.toDouble() + (dotSize * 3.0),
          startY.toDouble() + (dotSize * 4.1),
        ),
        Offset(
          startX.toDouble() + (dotSize * 4.4),
          startY.toDouble() + (dotSize * 4.1),
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
