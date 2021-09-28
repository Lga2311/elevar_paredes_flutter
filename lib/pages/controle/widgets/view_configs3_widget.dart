// ignore_for_file: prefer_const_constructors

import 'package:elevar_paredes_flutter/data/_export.dart';
import 'package:elevar_paredes_flutter/theme/_export_theme.dart';
import 'package:elevar_paredes_flutter/widgets/_export_widgets.dart';
import 'package:elevar_paredes_flutter/widgets/text.dart';
import 'package:flutter/material.dart';

class ViewConfigs3 extends StatelessWidget {
  const ViewConfigs3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: backgroundColor,
        child: Column(
          children: [
            WindowBarTitle(title: 'Elevar Paredes'),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        //* TÍTULO
                        child: Text(
                          'Configurações',
                          style: TitleStyle,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      //* BOTÃO
                      //? Fazer Class Separadas para botões???
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(200, 35),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Carregar do CAD',
                          style: textButtonStyle,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  TablesConfigs(),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class TablesConfigs extends StatelessWidget {
  const TablesConfigs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width - (250 + 12 * 2),
        maxHeight: MediaQuery.of(context).size.height - (35 + 35 + 12 * 3),
      ),
      child: TabPane(
        tabs: [
          Tabs(
            text: const Text('Alvenaria', style: textTabPaneStyle),
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: lineLevel4Color),
                      color: lineLevel4Color,
                    ),
                    child: TableAlvConfig()),
              );
            },
          ),
          Tabs(
            text: const Text('Esquadrias', style: textTabPaneStyle),
            builder: (BuildContext context) {
              return Container(color: Colors.orange);
            },
          ),
          Tabs(
            text: const Text('Ferro Groute', style: textTabPaneStyle),
            builder: (BuildContext context) {
              return Container(color: Colors.yellow);
            },
          ),
          Tabs(
            text: const Text('Ferro Canaleta', style: textTabPaneStyle),
            builder: (BuildContext context) {
              return Container(color: Colors.green);
            },
          ),
          Tabs(
            text: const Text('Laje', style: textTabPaneStyle),
            builder: (BuildContext context) {
              return Container(color: Colors.blue);
            },
          ),
        ],
      ),
    );
  }
}
