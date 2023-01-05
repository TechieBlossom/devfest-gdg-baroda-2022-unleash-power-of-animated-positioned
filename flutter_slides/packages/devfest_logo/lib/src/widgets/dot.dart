import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({super.key, this.color = Colors.white, required this.size});

  factory Dot.black({required int size}) {
    return Dot(
      color: Colors.white,
      size: size,
    );
  }

  final Color color;
  final int size;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size.fromRadius(size.toDouble()),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.1),
              offset: Offset(size.toDouble() / 3, size.toDouble() / 3),
              blurRadius: size.toDouble() / 2,
              spreadRadius: size.toDouble() / 2,
            ),
          ],
        ),
      ),
    );
  }
}
