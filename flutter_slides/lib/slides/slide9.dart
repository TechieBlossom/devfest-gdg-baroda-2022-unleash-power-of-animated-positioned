import 'package:flutter/material.dart';
import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';

class Slide9 extends StatelessWidget {
  const Slide9({super.key});

  final double sw = 550 + 150;

  // With ratio 105 x 68 for length by width = 1.54
  final double sh = 847;

  @override
  Widget build(BuildContext context) {
    final leftHeaderStyle = headlineSmall(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBox(
              items: [
                TextBoxItem(text: 'Creating soccer formations with Offset'),
              ],
              style: displaySmall(context),
            ),
            const SizedBox(height: 50),
            DataTable(
              border: TableBorder.symmetric(
                outside: const BorderSide(width: 2, color: Colors.white10),
                inside: const BorderSide(width: 1, color: Colors.white10),
              ),
              dividerThickness: 2,
              headingRowColor: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.blueAccent;
                }

                return Colors.white24;
              }),
              headingRowHeight: 80,
              dataRowHeight: 60,
              headingTextStyle: extraBoldHeadlineMedium(context),
              dataTextStyle: headlineSmall(context),
              columns: const [
                DataColumn(label: SizedBox(width: 100)),
                DataColumn(label: Text('4-3-3')),
                DataColumn(label: Text('5-3-2')),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('Player 1', style: leftHeaderStyle)),
                    const DataCell(Text('Offset 1')),
                    const DataCell(Text('Offset 12')),
                  ],
                ),
                DataRow(
                  selected: true,
                  cells: [
                    DataCell(Text('Player 2', style: leftHeaderStyle)),
                    DataCell(
                      Text(
                        'Offset (0, threeFourthHeight)',
                        style: italicHeadlineSmall(context),
                      ),
                    ),
                    DataCell(
                      Text(
                        'Offset (0, twoThirdHeight)',
                        style: italicHeadlineSmall(context),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Player 3', style: leftHeaderStyle)),
                    const DataCell(Text('Offset 3')),
                    const DataCell(Text('Offset 14')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Player 4', style: leftHeaderStyle)),
                    const DataCell(Text('Offset 4')),
                    const DataCell(Text('Offset 15')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Player 5', style: leftHeaderStyle)),
                    const DataCell(Text('Offset 5')),
                    const DataCell(Text('Offset 16')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Player 6', style: leftHeaderStyle)),
                    const DataCell(Text('Offset 6')),
                    const DataCell(Text('Offset 17')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Player 7', style: leftHeaderStyle)),
                    const DataCell(Text('Offset 7')),
                    const DataCell(Text('Offset 18')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Player 8', style: leftHeaderStyle)),
                    const DataCell(Text('Offset 8')),
                    const DataCell(Text('Offset 19')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Player 9', style: leftHeaderStyle)),
                    const DataCell(Text('Offset 9')),
                    const DataCell(Text('Offset 20')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Player 10', style: leftHeaderStyle)),
                    const DataCell(Text('Offset 10')),
                    const DataCell(Text('Offset 21')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Player 11', style: leftHeaderStyle)),
                    const DataCell(Text('Offset 11')),
                    const DataCell(Text('Offset 22')),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Center(
            child: TextBox(
              items: [
                TextBoxItem(text: 'Placeholder for formation switcher.'),
                TextBoxItem(
                    text: '\n\nPlease refer slide in '
                        '\nrecording in presentation video.'),
              ],
              style: displaySmall(context),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
