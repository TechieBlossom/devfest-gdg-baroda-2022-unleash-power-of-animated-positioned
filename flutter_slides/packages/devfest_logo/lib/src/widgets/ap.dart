import 'package:flutter/material.dart';

class AP extends StatelessWidget {
  const AP({
    super.key,
    required this.offset,
    required this.size,
    required this.child,
    this.duration,
  });

  final Offset offset;
  final Widget child;
  final Duration? duration;
  final int size;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned.fromRect(
      curve: Curves.linearToEaseOut,
      duration: duration ?? const Duration(milliseconds: 4000),
      rect: Rect.fromCenter(
        center: offset,
        width: size.toDouble(),
        height: size.toDouble(),
      ),
      child: child,
    );
  }
}
