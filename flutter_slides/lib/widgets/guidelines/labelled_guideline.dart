import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter/material.dart';

class LabelledGuideline extends StatelessWidget {
  const LabelledGuideline({
    super.key,
    required this.label,
    required this.length,
    this.color = Colors.white,
    this.guidelineThickness = 5,
    this.labelStyle,
    this.reverse = false,
    this.isHorizontal = true,
  });

  final String label;
  final double length;
  final double? guidelineThickness;
  final Color? color;
  final bool reverse;
  final TextStyle? labelStyle;
  final bool isHorizontal;

  factory LabelledGuideline.vertical({
    required String label,
    required double length,
    double? guidelineThickness,
    Color? color,
    bool? reverse,
  }) =>
      LabelledGuideline(
        label: label,
        length: length,
        color: color ?? Colors.white,
        isHorizontal: false,
        reverse: reverse ?? false,
        guidelineThickness: guidelineThickness ?? 5,
      );

  @override
  Widget build(BuildContext context) {
    final children = _buildChildren(context, isHorizontal);
    return isHorizontal
        ? Column(children: reverse ? children.reversed.toList() : children)
        : Row(children: reverse ? children.reversed.toList() : children);
  }

  List<Widget> _buildChildren(BuildContext context, bool isHorizontal) => [
        Text(
          label,
          style: labelStyle?.copyWith(color: color) ??
              headlineSmall(context)?.copyWith(color: color),
        ),
        isHorizontal ? horizontalLine : verticalLine,
      ];

  Widget get horizontalLine => SizedBox(
        width: length,
        child: Divider(
          thickness: guidelineThickness,
          color: color,
        ),
      );

  Widget get verticalLine => SizedBox(
        height: length,
        child: VerticalDivider(
          thickness: guidelineThickness,
          color: color,
        ),
      );
}
