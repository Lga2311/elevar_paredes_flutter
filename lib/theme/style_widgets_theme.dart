import 'package:flutter/material.dart';

import '_export_theme.dart';

// //- BOTÕES
// const backgroundButtonColor = witheColorE1;
// Color borderButtonColor = lineLevel2Color;
// const textButtonColor = greyColor33;

final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
  primary: backgroundButtonColor,
  onPrimary: Colors.black54,
  minimumSize: const Size(100, 40),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
  side: BorderSide(width: 1, color: borderButtonColor),
  shadowColor: backgroundColor,
);


//- TAB FRAME 
// Ele foi definido diretamente entre colors_theme.dart e tab_pane_widget.dart;