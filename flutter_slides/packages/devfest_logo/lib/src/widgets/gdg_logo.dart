import 'dart:math';

import 'package:devfest_logo/src/colors.dart';
import 'package:devfest_logo/src/sizes.dart';
import 'package:devfest_logo/src/widgets/ap.dart';
import 'package:devfest_logo/src/widgets/dot.dart';
import 'package:flutter/material.dart';

class GdgLogo extends StatelessWidget {
  const GdgLogo({
    super.key,
    required this.animated,
    required this.startX,
    required this.startY,
    required this.sw,
    required this.sh,
  });

  final bool animated;
  final int startX;
  final int startY;
  final double sw;
  final double sh;

  int get swInt => sw.toInt();

  int get shInt => sh.toInt();

  int get _dotSize => Sizes.dotSize * 2;

  Random get random => Random();

  Dot get green => Dot(size: _dotSize, color: AppColors.green);

  Dot get yellow => Dot(size: _dotSize, color: AppColors.yellow);

  Dot get blue => Dot(size: _dotSize, color: AppColors.blue);

  Dot get red => Dot(size: _dotSize, color: AppColors.red);

  List<AP> get _allFinalDots => [
        ..._finalYellowDots,
        ..._finalGreenDots,
        ..._finalRedDots,
        ..._finalBlueDots,
      ];

  List<AP> get _allInitialDots => [
        ..._initialDots(green),
        ..._initialDots(yellow),
        ..._initialDots(blue),
        ..._initialDots(red),
      ];

  List<AP> _initialDots(Widget dot) {
    return List.generate(
      4,
      (index) => AP(
        offset: Offset(
          random.nextInt(swInt).toDouble() + _dotSize,
          random.nextInt(shInt).toDouble() + _dotSize,
        ),
        size: _dotSize,
        child: dot,
      ),
    );
  }

  List<Offset> get _finalGreenOffsets {
    const angle = 30;
    final radius = _dotSize;
    return [
      for (int i = 1; i < 5; i++)
        Offset(
          startX + 350 + _dotSize/2 - radius * i * cos(pi * 2 * angle / 360),
          startY + 160 - _dotSize/2 - radius * i * sin(pi * 2 * angle / 360),
        ),
    ];
  }

  List<Offset> get _finalYellowOffsets {
    const angle = -30;
    final radius = _dotSize;
    return [
      for (int i = 1; i < 5; i++)
        Offset(
          startX + 350 + _dotSize/2 - radius * i * cos(pi * 2 * angle / 360),
          startY + 112 - _dotSize/2 - radius * i * sin(pi * 2 * angle / 360),
        ),
    ];
  }

  List<Offset> get _finalRedOffsets {
    const angle = -30;
    final radius = _dotSize;
    return [
      for (int i = 1; i < 5; i++)
        Offset(
          startX - _dotSize/2 + radius * i * cos(pi * 2 * angle / 360),
          startY + 160 - _dotSize/2 + radius * i * sin(pi * 2 * angle / 360),
        ),
    ];
  }

  List<Offset> get _finalBlueOffsets {
    const angle = 30;
    final radius = _dotSize;
    return [
      for (int i = 1; i < 5; i++)
        Offset(
          startX - _dotSize/2 + radius * i * cos(pi * 2 * angle / 360),
          startY + 112 - _dotSize/2 + radius * i * sin(pi * 2 * angle / 360),
        ),
    ];
  }

  List<AP> get _finalGreenDots => [
        ..._finalGreenOffsets
            .map((offset) => AP(offset: offset, size: _dotSize, child: green)),
      ];

  List<AP> get _finalYellowDots => [
        ..._finalYellowOffsets
            .map((offset) => AP(offset: offset, size: _dotSize, child: yellow)),
      ];

  List<AP> get _finalBlueDots => [
        ..._finalBlueOffsets
            .map((offset) => AP(offset: offset, size: _dotSize, child: blue)),
      ];

  List<AP> get _finalRedDots => [
        ..._finalRedOffsets
            .map((offset) => AP(offset: offset, size: _dotSize, child: red)),
      ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (animated) ..._allFinalDots,
        if (!animated) ..._allInitialDots
      ],
    );
  }
}
