import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:elevar_paredes_flutter/main.dart';
import 'package:elevar_paredes_flutter/pages/controle/widgets/_export_widgets.dart';
import 'package:elevar_paredes_flutter/pages/controle/widgets/view_configs2_widget.dart';
import 'package:elevar_paredes_flutter/theme/_export_theme.dart';
import 'package:flutter/material.dart';

class ControlePage extends StatefulWidget {
  const ControlePage({Key? key}) : super(key: key);

  @override
  _ControlePageState createState() => _ControlePageState();
}

class _ControlePageState extends State<ControlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WindowBorder(
        color: borderColor,
        width: 1,
        child: Row(
          children: const [
            // LeftSide(),
            // RightSide(),
            ViewConfigs3(),
            SideMenu(),
          ],
        ),
      ),
    );
  }
}
