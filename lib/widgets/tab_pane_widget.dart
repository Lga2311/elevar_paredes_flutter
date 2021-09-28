// Licensed to the Apache Software Foundation (ASF) under one or more
// contributor license agreements.  See the NOTICE file distributed with
// this work for additional information regarding copyright ownership.
// The ASF licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:elevar_paredes_flutter/theme/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tabs {
  const Tabs({
    required this.text,
    required this.builder,
  });

  final Text text;
  final WidgetBuilder builder;
}

class TabPane extends StatefulWidget {
  const TabPane({
    Key? key,
    this.initialSelectedIndex = 0,
    required this.tabs,
  }) : super(key: key);

  final int initialSelectedIndex;
  final List<Tabs> tabs;

  @override
  _TabPaneState createState() => _TabPaneState();
}

class _TabPaneState extends State<TabPane> {
  late int selectedIndex;
  final double opacitySelected = 0.9;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> tabs = <Widget>[];
    for (int i = 0; i < widget.tabs.length; i++) {
      final Tabs tab = widget.tabs[i];
      if (i == selectedIndex) {
        tabs.add(
          DecoratedBox(
            decoration: BoxDecoration(
              color: backgroundTabPaneColor,
              border: Border(
                top: BorderSide(width: 1, color: borderTabPaneColor),
                bottom:
                    BorderSide(width: 1, color: backgroundTabActivatedColor),
                left: BorderSide(width: 1, color: borderTabPaneColor),
                right: BorderSide(width: 1, color: borderTabPaneColor),
              ),
              gradient: LinearGradient(
                begin: const Alignment(0, -0.85),
                end: const Alignment(0, -0.65),
                colors: <Color>[
                  tabActivatedColor.withOpacity(opacitySelected),
                  tabActivatedColor
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
              child: tab.text,
            ),
          ),
        );
      } else {
        tabs.add(
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = i;
                });
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: tabInactivatedColor,
                  border: Border(
                    top: BorderSide(width: 1, color: borderTabPaneColor),
                    bottom: BorderSide(width: 1, color: borderTabPaneColor),
                    left: BorderSide(width: 1, color: borderTabPaneColor),
                    right: BorderSide(width: 1, color: borderTabPaneColor),
                  ),
                  gradient: LinearGradient(
                    begin: const Alignment(0, -0.85),
                    end: const Alignment(0, -0.65),
                    colors: <Color>[
                      tabInactivatedColor.withOpacity(opacitySelected),
                      tabInactivatedColor
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(6, 1, 6, 4),
                  child: tab.text,
                ),
              ),
            ),
          ),
        );
      }
      tabs.add(
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1, color: borderTabPaneColor),
            ),
          ),
          child: SizedBox(width: 0),
        ),
      );
    }
    tabs.add(
      Expanded(
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1, color: borderTabPaneColor),
            ),
          ),
          child: SizedBox(width: 4),
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: tabs,
        ),
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 1, color: borderTabPaneColor),
                right: BorderSide(width: 1, color: borderTabPaneColor),
                bottom: BorderSide(width: 1, color: borderTabPaneColor),
              ),
              color: backgroundTabActivatedColor,
            ),
            child: widget.tabs[selectedIndex].builder(context),
          ),
        ),
      ],
    );
  }
}
