import 'package:chicago/chicago.dart' show BorderPane;
import 'package:elevar_paredes_flutter/widgets/tab_pane_widget.dart';
import 'package:elevar_paredes_flutter/data/_export.dart';
import 'package:elevar_paredes_flutter/theme/_export_theme.dart';
import 'package:elevar_paredes_flutter/widgets/_export_widgets.dart';
import 'package:elevar_paredes_flutter/widgets/text.dart';
import 'package:flutter/material.dart';

class ViewConfigs2 extends StatelessWidget {
  const ViewConfigs2({Key? key}) : super(key: key);

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
                  top: 12.0,
                  bottom: 12.0,
                  right: 12.0,
                  left: 12.0,
                ),
                child: TablesConfigs(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TablesConfigs extends StatelessWidget {
  const TablesConfigs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabPane(
      tabs: [
        Tabs(
          text: const Text('Pomegranate', style: textTabPaneStyle),
          builder: (BuildContext context) {
            return const Center(child: ColoredText('Red', Color(0xffff0000)));
          },
        ),
        Tabs(
          text: const Text('Mango', style: textTabPaneStyle),
          builder: (BuildContext context) {
            return const Center(
                child: ColoredText('Orange', Color(0xffffa500)));
          },
        ),
        Tabs(
          text: const Text('Banana', style: textTabPaneStyle),
          builder: (BuildContext context) {
            return const Center(
                child: ColoredText('Yellow', Color(0xffffff00)));
          },
        ),
        Tabs(
          text: const Text('Lime', style: textTabPaneStyle),
          builder: (BuildContext context) {
            return const Center(child: ColoredText('Green', Color(0xff00ff00)));
          },
        ),
        Tabs(
          text: const Text('Blueberry', style: textTabPaneStyle),
          builder: (BuildContext context) {
            return const Center(child: ColoredText('Blue', Color(0xff0000ff)));
          },
        ),
        Tabs(
          text: const Text('Plum', style: textTabPaneStyle),
          builder: (BuildContext context) {
            return const Center(
                child: ColoredText('Purple', Color(0xff800080)));
          },
        ),
      ],
    );
  }
}

class TabsDemo extends StatelessWidget {
  const TabsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BorderPane(
      borderColor: const Color(0xff999999),
      backgroundColor: const Color(0xffffffff),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4, 2, 4, 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BoldText('Tab Pane'),
            const SizedBox(height: 4),
            ConstrainedBox(
              constraints: const BoxConstraints(
                //maxWidth: 400,
                maxHeight: 100,
              ),
              child: TabPane(
                tabs: [
                  Tabs(
                    text: const Text('Pomegranate', style: textTabPaneStyle),
                    builder: (BuildContext context) {
                      return const Center(
                          child: ColoredText('Red', Color(0xffff0000)));
                    },
                  ),
                  Tabs(
                    text: const Text('Mango', style: textTabPaneStyle),
                    builder: (BuildContext context) {
                      return const Center(
                          child: ColoredText('Orange', Color(0xffffa500)));
                    },
                  ),
                  Tabs(
                    text: const Text('Banana', style: textTabPaneStyle),
                    builder: (BuildContext context) {
                      return const Center(
                          child: ColoredText('Yellow', Color(0xffffff00)));
                    },
                  ),
                  Tabs(
                    text: const Text('Lime', style: textTabPaneStyle),
                    builder: (BuildContext context) {
                      return const Center(
                          child: ColoredText('Green', Color(0xff00ff00)));
                    },
                  ),
                  Tabs(
                    text: const Text('Blueberry', style: textTabPaneStyle),
                    builder: (BuildContext context) {
                      return const Center(
                          child: ColoredText('Blue', Color(0xff0000ff)));
                    },
                  ),
                  Tabs(
                    text: const Text('Plum', style: textTabPaneStyle),
                    builder: (BuildContext context) {
                      return const Center(
                          child: ColoredText('Purple', Color(0xff800080)));
                    },
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
