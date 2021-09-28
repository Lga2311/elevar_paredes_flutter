import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:elevar_paredes_flutter/theme/_export_theme.dart';
import 'package:flutter/material.dart';

//! Contrução da barra da janela
class WindowBarButtons extends StatelessWidget {
  const WindowBarButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: redBaseColor,
      child: WindowTitleBarBox(
        child: Row(
          children: [
            Expanded(child: MoveWindow()),
            const WindowButtons(),
          ],
        ),
      ),
    );
  }
}

//! BOTÕES DA JANELA
// -Config Colors
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

// -Contrução dos botões
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
