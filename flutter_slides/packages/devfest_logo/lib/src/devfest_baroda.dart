import 'package:devfest_logo/src/widgets/devfest_logo.dart';
import 'package:devfest_logo/src/widgets/gdg_logo.dart';
import 'package:flutter/material.dart';

class DevfestBaroda extends StatelessWidget {
  const DevfestBaroda({
    super.key,
    required this.animated,
    required this.sw,
    required this.sh,
  });

  final bool animated;
  final double sw;
  final double sh;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        DevFestLogo(
          animated: animated,
          startX: 50,
          startY: 230,
          sw: sw,
          sh: sh,
        ),
        GdgLogo(
          animated: animated,
          startX: 20,
          startY: 0,
          sw: sw,
          sh: sh,
        ),
      ],
    );
  }
}
