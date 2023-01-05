import 'dart:math';

import 'package:devfest_logo/src/widgets/ap.dart';
import 'package:devfest_logo/src/widgets/dot.dart';
import 'package:flutter/material.dart';

class DLowerCase extends StatelessWidget {
  const DLowerCase({
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

  List<Offset> get _offsets => List.generate(14, (index) {
        final randomX = random.nextInt(swInt).toDouble() + dotSize;
        final randomY = random.nextInt(shInt).toDouble() + dotSize;
        return Offset(randomX, randomY);
      });

  List<AP> get _allInitialDots => _offsets
      .map((offset) => AP(offset: offset, size: dotSize, child: black))
      .toList();

  List<Offset> get _allFinalDotOffsets => [
        Offset(startX + (dotSize * 3.3), startY.toDouble()),
        Offset(startX + (dotSize * 3.3), startY + (dotSize * 1.2)),
        Offset(startX + (dotSize * 3.3), startY + (dotSize * 2.4)),
        Offset(startX + (dotSize * 3.3), startY + (dotSize * 3.6)),
        Offset(startX + (dotSize * 3.3), startY + (dotSize * 4.8)),
        Offset(startX + (dotSize * 3.5), startY + (dotSize * 5.8)),
        Offset(startX + (dotSize * 4.0), startY + (dotSize * 6.1)),
        Offset(startX + (dotSize * 2.2), startY + (dotSize * 2.6)),
        Offset(startX + (dotSize * 1.0), startY + (dotSize * 2.5)),
        Offset(startX + (dotSize * 0.1), startY + (dotSize * 3.3)),
        Offset(startX + (dotSize * 0.0), startY + (dotSize * 4.5)),
        Offset(startX + (dotSize * 0.4), startY + (dotSize * 5.5)),
        Offset(startX + (dotSize * 1.5), startY + (dotSize * 6.1)),
        Offset(startX + (dotSize * 2.6), startY + (dotSize * 5.8)),
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
