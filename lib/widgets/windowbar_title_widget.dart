import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:elevar_paredes_flutter/theme/_export_theme.dart';
import 'package:flutter/material.dart';

class WindowBarTitle extends StatelessWidget {
  final String title;

  const WindowBarTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: redBaseColor,
      child: WindowTitleBarBox(
        child: Row(
          children: [
            // Image.asset('././assets/icone.png', ),
            Container(
              child: Text(
                title,
                style: WindowTitleStyle,
              ),
              margin: const EdgeInsets.only(left: 10),
            ),
            Expanded(child: MoveWindow()),
          ],
        ),
      ),
    );
  }
}
