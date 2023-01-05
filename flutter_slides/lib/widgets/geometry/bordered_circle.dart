import 'package:flutter/material.dart';

class BorderedCircle extends StatelessWidget {
  const BorderedCircle({
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
        shape: BoxShape.circle,
        border: Border.all(
          width: width ?? 1,
          color: color ?? Colors.white,
        ),
      ),
      child: child,
    );
  }
}
