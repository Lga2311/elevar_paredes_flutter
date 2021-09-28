import 'package:elevar_paredes_flutter/theme/colors_theme.dart';
import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class CheckboxPersonalizedWidget extends StatefulWidget {
  const CheckboxPersonalizedWidget({Key? key}) : super(key: key);

  @override
  State<CheckboxPersonalizedWidget> createState() =>
      _CheckboxPersonalizedWidgetState();
}

/// This is the private State class that goes with CheckboxPersonalizedWidget.
class _CheckboxPersonalizedWidgetState
    extends State<CheckboxPersonalizedWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return greyColor33;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
