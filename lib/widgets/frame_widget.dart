import 'package:elevar_paredes_flutter/theme/_export_theme.dart';
import 'package:flutter/material.dart';

class Frame extends StatelessWidget {
  final Text title;
  final Color titleBackgroundColor;
  final Padding? padding;
  //final child child;

  const Frame({
    Key? key,
    required this.title,
    required this.titleBackgroundColor,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: lineLevel2Color),
            color: titleBackgroundColor,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: lineLevel2Color,
            ),
          ),
          child: const Text('Carregando'),
        )
      ],
    );
  }
}
