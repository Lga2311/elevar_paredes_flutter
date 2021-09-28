// ignore_for_file: prefer_const_constructors

import 'package:elevar_paredes_flutter/data/_export.dart';
import 'package:elevar_paredes_flutter/theme/_export_theme.dart';
import 'package:elevar_paredes_flutter/widgets/_export_widgets.dart';
import 'package:flutter/material.dart';

class ViewConfigs extends StatelessWidget {
  const ViewConfigs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: backgroundColor,
        child: Column(
          children: const [
            WindowBarTitle(title: 'Elevar Paredes'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 2.0,
                  bottom: 12.0,
                  right: 12.0,
                  left: 12.0,
                ),
                child: TablesViewConfigs(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TablesViewConfigs extends StatefulWidget {
  const TablesViewConfigs({Key? key}) : super(key: key);

  @override
  _TablesViewConfigsState createState() => _TablesViewConfigsState();
}

class _TablesViewConfigsState extends State<TablesViewConfigs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: backgroundColor,
            elevation: 0,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  //* TÍTULO
                  child: Text(
                    'Configurações',
                    style: TitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
                //* BOTÃO
                //? Fazer Class Separadas para botões???
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 35),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Carregar do CAD',
                    style: textButtonStyle,
                  ),
                ),
              ],
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                    height: 30,
                    child: Text('Alvenaria', style: textTabBarStyle)),
                Tab(
                  height: 30,
                  child: Text('Esquadria', style: textTabBarStyle),
                ),
                Tab(
                  height: 30,
                  child: Text('Groute', style: textTabBarStyle),
                ),
                Tab(
                  height: 30,
                  child: Text('Canaleta', style: textTabBarStyle),
                ),
                Tab(
                  height: 30,
                  child: Text('Laje', style: textTabBarStyle),
                ),
              ],
              indicator: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1, color: borderTabPaneColor),
                  bottom:
                      BorderSide(width: 1, color: backgroundTabActivatedColor),
                  left: BorderSide(width: 1, color: borderTabPaneColor),
                  right: BorderSide(width: 1, color: borderTabPaneColor),
                ),
                color: Colors.white,
              ),
              labelColor: Colors.red,
              unselectedLabelColor: greyColor33,
              indicatorSize: TabBarIndicatorSize.tab,
              // indicatorPadding: EdgeInsets.all(5.0),
              // indicatorColor: Colors.red,
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1, color: backgroundTabActivatedColor),
                bottom: BorderSide(width: 1, color: borderTabPaneColor),
                left: BorderSide(width: 1, color: borderTabPaneColor),
                right: BorderSide(width: 1, color: borderTabPaneColor),
              ),
              color: Colors.white, //! Adicionar cores a pasta THEMES
            ),
            padding: const EdgeInsets.all(12.0),
            child: Container(
              color: const Color(0xFFC4C4C4),
              padding: const EdgeInsets.all(1.0),
              child: TabBarView(
                children: [
                  const TableAlvConfig(),
                  Container(color: const Color(0xFF3E3F68)),
                  Container(color: const Color(0xFF326065)),
                  Container(color: const Color(0xFF406D8C)),
                  Container(color: const Color(0xFF34584D)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
