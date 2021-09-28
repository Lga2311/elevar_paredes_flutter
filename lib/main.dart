// ignore_for_file: prefer_const_constructors

/*
Don't forget to add these 2 lines at the beggining of windows\runner\main.cpp

#include <bitsdojo_window_windows/bitsdojo_window_plugin.h>
auto bdw = bitsdojo_window_configure(BDW_CUSTOM_FRAME | BDW_HIDE_ON_STARTUP);

*/

import 'package:elevar_paredes_flutter/pages/controle/controle_page.dart';
import 'package:elevar_paredes_flutter/theme/_export_theme.dart';
import 'package:elevar_paredes_flutter/widgets/_export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

void main() {
  runApp(MyApp());
  // doWhenWindowReady(() {
  //   final win = appWindow;
  //   final initialSize = Size(900, 600);
  //   win.minSize = initialSize;
  //   win.size = initialSize;
  //   win.title = "Elevar Paredes";
  //   win.show();
  // });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          unselectedWidgetColor: lineLevel1Color,
          elevatedButtonTheme:
              ElevatedButtonThemeData(style: elevatedButtonStyle)),
      home: ControlePage(),
    );
  }
}

const sidebarColor = Color(0xFFEEEEEE);

class RightSide extends StatelessWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Container(
        color: sidebarColor,
        child: Column(
          children: [
            //* WINDOWS BAR
            Container(
              color: redBaseColor,
              child: WindowTitleBarBox(
                child: Row(
                  children: [
                    Expanded(child: MoveWindow()),
                    const WindowButtons(),
                  ],
                ),
              ),
            ),
            //* restante da tela
            Expanded(
              child: Row(
                children: [
                  //~ Borda Cinza a Esquerda
                  Container(
                    color: greyColor33.withOpacity(0.5),
                    width: 1.5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          //´ Titulo Imprimir
                          const Text('Imprimir', style: TitleStyle),
                          SizedBox(height: 5),
                          Container(color: redBaseColor, height: 5),
                          SizedBox(height: 25),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: greyColor33.withOpacity(0.4),
                                  width: 1,
                                ),
                              ),
                              height: 140,
                              child: CheckboxPersonalizedWidget(),
                            ),
                          ),
                          SizedBox(height: 17),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: greyColor33.withOpacity(0.4),
                                  width: 1,
                                ),
                              ),
                              height: 142,
                              child: ListView(
                                padding: EdgeInsets.all(12),
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  CheckboxPersonalizedWidget(),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            cursorColor: Colors.red,
                            maxLines: 1,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'ΔY',
                              border: OutlineInputBorder(),
                              hoverColor: Colors.teal,
                            ),
                          ),
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

const backgroundColor = Color(0xFFEEEEEE);

class LeftSide extends StatelessWidget {
  const LeftSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: backgroundColor,
        child: Column(
          children: [
            Container(
              color: redBaseColor,
              child: WindowTitleBarBox(
                child: Row(
                  children: [
                    //Image.asset('assets/icone.png'),
                    Container(
                      child: const Text(
                        'Elevar Paredes',
                        style: WindowTitleStyle,
                      ),
                      margin: const EdgeInsets.only(left: 10),
                    ),
                    Expanded(child: MoveWindow()),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  //color: Color(0xFF0CCE6B),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

final buttonColors = WindowButtonColors(
  mouseOver: Colors.black26,
  mouseDown: Colors.black54,
  iconNormal: Colors.white,
  iconMouseOver: Colors.white,
  iconMouseDown: Colors.white,
);

final closeButtonColors = WindowButtonColors(
  mouseOver: const Color(0xFFFF0000),
  mouseDown: Colors.black54,
  iconNormal: Colors.white,
  iconMouseOver: Colors.white,
);

class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
