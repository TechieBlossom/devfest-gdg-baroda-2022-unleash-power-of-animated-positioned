import 'package:devfest_logo/src/letters/d_lowercase.dart';
import 'package:devfest_logo/src/letters/e_lowercase.dart';
import 'package:devfest_logo/src/letters/f_lowercase.dart';
import 'package:devfest_logo/src/letters/s_lowercase.dart';
import 'package:devfest_logo/src/letters/t_lowercase.dart';
import 'package:devfest_logo/src/letters/v_lowercase.dart';
import 'package:devfest_logo/src/sizes.dart';
import 'package:flutter/material.dart';

class DevFestLogo extends StatelessWidget {
  const DevFestLogo({
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

  @override
  Widget build(BuildContext context) {
    final dStartX = startX;
    final eStartX = startX + (Sizes.dotSize * 6) + Sizes.spaceForDot;
    final vStartX = startX + (Sizes.dotSize * 12) + Sizes.spaceForDot;
    final fStartX = startX + (Sizes.dotSize * 19) + Sizes.spaceForDot;
    final e2StartX = startX + (Sizes.dotSize * 25) + Sizes.spaceForDot * 3;
    final sStartX = startX + (Sizes.dotSize * 31) + Sizes.spaceForDot * 3;
    final tStartX = startX + (Sizes.dotSize * 37) + Sizes.spaceForDot;

    final dStartY = startY;
    final eStartY = startY + (Sizes.dotSize * 2);
    final vStartY = startY + (Sizes.dotSize * 2);
    final fStartY = startY + (Sizes.dotSize * 2);
    final e2StartY = startY + (Sizes.dotSize * 2);
    final sStartY = startY + (Sizes.dotSize * 2);
    final tStartY = startY + (Sizes.dotSize * 2);

    return Stack(
      children: [
        DLowerCase(
          sw: sw,
          sh: sh,
          startX: dStartX,
          startY: dStartY,
          animated: animated,
          dotSize: Sizes.dotSize,
          spaceForDots: Sizes.spaceForDot,
          actualDotSpace: Sizes.actualDotSpace,
        ),
        ELowerCase(
          sw: sw,
          sh: sh,
          startX: eStartX,
          startY: eStartY,
          animated: animated,
          dotSize: Sizes.dotSize,
          spaceForDots: Sizes.spaceForDot,
          actualDotSpace: Sizes.actualDotSpace,
        ),
        VLowerCase(
          sw: sw,
          sh: sh,
          startX: vStartX,
          startY: vStartY,
          animated: animated,
          dotSize: Sizes.dotSize,
          spaceForDots: Sizes.spaceForDot,
          actualDotSpace: Sizes.actualDotSpace,
        ),
        FLowerCase(
          sw: sw,
          sh: sh,
          startX: fStartX,
          startY: fStartY,
          animated: animated,
          dotSize: Sizes.dotSize,
          spaceForDots: Sizes.spaceForDot,
          actualDotSpace: Sizes.actualDotSpace,
        ),
        ELowerCase(
          sw: sw,
          sh: sh,
          startX: e2StartX,
          startY: e2StartY,
          animated: animated,
          dotSize: Sizes.dotSize,
          spaceForDots: Sizes.spaceForDot,
          actualDotSpace: Sizes.actualDotSpace,
        ),
        SLowerCase(
          sw: sw,
          sh: sh,
          startX: sStartX,
          startY: sStartY,
          animated: animated,
          dotSize: Sizes.dotSize,
          spaceForDots: Sizes.spaceForDot,
          actualDotSpace: Sizes.actualDotSpace,
        ),
        TLowerCase(
          sw: sw,
          sh: sh,
          startX: tStartX,
          startY: tStartY,
          animated: animated,
          dotSize: Sizes.dotSize,
          spaceForDots: Sizes.spaceForDot,
          actualDotSpace: Sizes.actualDotSpace,
        ),
      ],
    );
  }
}
