import 'package:elevar_paredes_flutter/data/controle.dart';
import 'package:elevar_paredes_flutter/theme/_export_theme.dart';
import 'package:flutter/material.dart';

class CheckBoxGroupDesenhos extends StatefulWidget {
  const CheckBoxGroupDesenhos({Key? key}) : super(key: key);

  @override
  _CheckBoxGroupDesenhosState createState() => _CheckBoxGroupDesenhosState();
}

class _CheckBoxGroupDesenhosState extends State<CheckBoxGroupDesenhos> {
  bool value = false;

  final allItens = CheckBoxState(title: 'Todos');

  @override
  Widget build(BuildContext context) {
    return ListView(
      //padding: const EdgeInsets.all(12),
      children: [
        //~ informando o Contrutor do Checkbox 'Todos'
        buildGroupCheckbox(allItens),
        //Divider(color: lineLevel2Color),
        //~ informando e Listando os contrutores do 'sub-nível'
        ...checkboxItensDesenhos.map(buildSingleCheckbox).toList(),
      ],
    );
  }

  //* Contrutor Sub-nível
  Widget buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
        contentPadding: EdgeInsets.all(0),
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(
          checkbox.title,
          style: textStyle,
        ),
        tileColor: Colors.amber,
        value: checkbox.value,
        onChanged: (value) => setState(() {
          checkbox.value = value!;
          //nota: alteração do checkbox Todos quando o sub-nível estiver completamente preenchido ou não
          allItens.value =
              checkboxItensDesenhos.every((notification) => notification.value);
        }),
      );

  //* Contrutor Todos
  Widget buildGroupCheckbox(CheckBoxState checkbox) => CheckboxListTile(
        contentPadding: EdgeInsets.all(0),
        controlAffinity: ListTileControlAffinity.leading,
        value: checkbox.value,
        title: Text(
          checkbox.title,
          style: textStyle,
        ),
        onChanged: toggleGroupCheckbox,
      );
  //nota: alteração do checkbox sub-nível quando Todos estiver selecionado
  void toggleGroupCheckbox(bool? value) {
    if (value == null) return;

    setState(() {
      allItens.value = value;
      for (var iten in checkboxItensDesenhos) {
        iten.value = value;
      }
    });
  }
}

class CheckBoxGroup extends StatefulWidget {
  const CheckBoxGroup({Key? key}) : super(key: key);

  @override
  State<CheckBoxGroup> createState() => CheckBoxGroupState();
}

class CheckBoxGroupState extends State<CheckBoxGroup> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      // scrollDirection: Axis.horizontal,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      // Container(height: 6, color: Colors.blue),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 40,
          child: Text('item $index'),
        );
      },
    );
  }
}
