// ignore_for_file: prefer_const_constructors

import 'package:elevar_paredes_flutter/data/_export.dart';
import 'package:elevar_paredes_flutter/pages/controle/widgets/_export_widgets.dart';
import 'package:elevar_paredes_flutter/theme/_export_theme.dart';
import 'package:elevar_paredes_flutter/widgets/_export_widgets.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Container(
        color: backgroundColor,
        child: Column(
          children: [
            const WindowBarButtons(),
            Expanded(
              child: Row(
                children: [
                  //~ Borda Cinza a Esquerda
                  Container(
                    color: lineLevel1Color,
                    width: 1,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Imprimir', style: TitleStyle),
                          const SizedBox(height: 5),
                          //nota: trocar container por uma barra de progressão
                          Container(color: redBaseColor, height: 5),
                          SizedBox(
                            height: 12,
                            child: Container(color: Colors.blue),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red)),
                            height: 250,
                            child: CheckBoxGroupDesenhos(),
                          ),
                          // SizedBox(height: 12),
                          // CheckBoxGroup(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
