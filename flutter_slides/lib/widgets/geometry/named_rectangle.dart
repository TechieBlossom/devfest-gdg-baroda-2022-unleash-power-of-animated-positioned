import 'package:flutter/material.dart';

class NamedRectangle extends StatelessWidget {
  const NamedRectangle({
    super.key,
    required this.name,
    required this.color,
    this.isNameCenter = false,
  });

  final String name;
  final Color? color;
  final bool isNameCenter;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black),
      ),
      child: isNameCenter ? Center(child: _text(context)) : _text(context),
    );
  }

  Widget _text(BuildContext context) => Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      name,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w600),
      textAlign: TextAlign.start,
    ),
  );
}