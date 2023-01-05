import 'package:flutter/material.dart';
import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';

class Slide3 extends StatelessWidget {
  const Slide3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Examples',
          textAlign: TextAlign.start,
          style: displaySmall(context),
        ),
        const SizedBox(height: 50),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: DataTable(
                border: TableBorder.symmetric(
                  outside: const BorderSide(width: 2, color: Colors.white10),
                  inside: const BorderSide(width: 1, color: Colors.white10),
                ),
                dividerThickness: 2,
                headingRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.white10),
                dataRowColor: MaterialStateColor.resolveWith((states) {
                  if (states.contains(MaterialState.selected)) {
                    return Colors.blueAccent;
                  }

                  return Colors.white24;
                }),
                headingRowHeight: 80,
                dataRowHeight: 60,
                dataTextStyle: headlineMedium(context),
                headingTextStyle: extraBoldHeadlineMedium(context),
                columns: const [
                  DataColumn(label: Text('Base widget')),
                  DataColumn(label: Text('Animated widget')),
                ],
                rows: const [
                  DataRow(
                    cells: [
                      DataCell(Text('Container')),
                      DataCell(Text('AnimatedContainer')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Opacity')),
                      DataCell(Text('AnimatedOpacity')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Padding')),
                      DataCell(Text('AnimatedPadding')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Align')),
                      DataCell(Text('AnimatedAlign')),
                    ],
                  ),
                  DataRow(
                    selected: true,
                    cells: [
                      DataCell(Text('Positioned')),
                      DataCell(Text('AnimatedPositioned')),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: TextBox(
                items: [
                  TextBoxItem(text: 'And many more @'),
                  TextBoxItem(text: '\n'),
                  TextBoxItem(
                    text:
                        'https://docs.flutter.dev/development/ui/widgets/animation',
                    link:
                        'https://docs.flutter.dev/development/ui/widgets/animation',
                    style: headlineSmall(context)?.copyWith(color: Colors.blue),
                  ),
                ],
                textAlign: TextAlign.start,
                style: headlineSmall(context),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
