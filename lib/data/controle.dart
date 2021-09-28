import 'package:elevar_paredes_flutter/pages/controle/widgets/checkbox_desenhos_widget.dart';

// Estado de cada Checkbox que carrega o seu título e valor atual
class CheckBoxState {
  final String title;
  bool value;

  CheckBoxState({
    required this.title,
    this.value = false,
  });
}

final checkboxItensDesenhos = [
  CheckBoxState(title: 'Gabarito'),
  CheckBoxState(title: 'Esquadrias'),
  CheckBoxState(title: 'Ferro Groute'),
  CheckBoxState(title: 'Ferro Canaleta'),
];

const checkboxTextos = [
  "Tudo",
  "Nº Fidas",
  "Paredes",
  "Esquadrias",
  "Ferro Groute",
];
