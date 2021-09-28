import 'package:elevar_paredes_flutter/data/_export.dart';
import 'package:elevar_paredes_flutter/theme/_export_theme.dart';
import 'package:flutter/material.dart';

class TableAlvConfig extends StatelessWidget {
  final Color verticaMargin = Colors.pink;

  const TableAlvConfig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: DataTable(
            decoration: const BoxDecoration(
              // border: Border.all(color: lineLevel2Color),
              color: Colors.white,
            ),
            headingRowHeight: 30.0,
            dataRowHeight: 30,
            showBottomBorder: true,
            columns: const [
              DataColumn(
                  label: Text(
                'Largura',
                style: TitleDataTableStyle,
              )),
              DataColumn(
                  label: Text(
                'Comprimento',
                style: TitleDataTableStyle,
              )),
              DataColumn(
                  label: Text(
                'NºFiadas',
                style: TitleDataTableStyle,
              )),
              DataColumn(
                  label: Text(
                'Layer',
                style: TitleDataTableStyle,
              )),
            ],
            rows: alvConfig.map(
              (e) {
                return DataRow(
                  cells: [
                    DataCell(Center(
                      child: Text(e.larg.toString(), style: textDataTableStyle),
                    )),
                    DataCell(Center(
                      child: Text(e.comp.toString(), style: textDataTableStyle),
                    )),
                    DataCell(Center(
                      child:
                          Text(e.nFiadas.toString(), style: textDataTableStyle),
                    )),
                    DataCell(Center(
                      child:
                          Text(e.layer.toString(), style: textDataTableStyle),
                    )),
                  ],
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
