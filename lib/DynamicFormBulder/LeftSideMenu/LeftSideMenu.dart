// ignore_for_file: file_names

import 'package:dynamic_form_builder/DynamicFormBulder/LeftSideMenu/treeFromJson.dart';
import 'package:flutter/material.dart';

class LeftSideMenu extends StatefulWidget {
  const LeftSideMenu({
    Key? key,
    required this.onChange,
  }) : super(key: key);
  final Function onChange;
  @override
  State<LeftSideMenu> createState() => _LeftSideMenuState();
}

class _LeftSideMenuState extends State<LeftSideMenu> {
  final padding = const EdgeInsets.symmetric(horizontal: 15);

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return TreeFromJson();

    // Container(
    //   color: Colors.red,
    //   padding: padding,
    //   child: ExpansionTile(
    //       leading: const Icon(
    //         Icons.square,
    //         color: Colors.white,
    //         size: 18,
    //       ),
    //       onExpansionChanged: (b) {
    //         setState(() {
    //           _isExpanded = !_isExpanded; //using set state just to exemplify
    //         });
    //       },
    //       trailing: Icon(
    //         _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
    //         color: Colors.white,
    //       ),
    //       title: const Text(
    //         'dynamic text',
    //         style: TextStyle(color: Colors.white),
    //       ),
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.only(left: 20.0),
    //           child: buildMenuItem(
    //               text: 'dynamic text',
    //               icon: Icons.arrow_right_alt_rounded,
    //               onClicked: () {
    //                 widget.onChange("Uyku");
    //               }),
    //         ),
    //         ExpansionTile(
    //             leading: const Icon(
    //               Icons.square,
    //               color: Colors.white,
    //               size: 18,
    //             ),
    //             onExpansionChanged: (b) {
    //               setState(() {
    //                 _isExpanded =
    //                     !_isExpanded; //using set state just to exemplify
    //               });
    //             },
    //             trailing: Icon(
    //               _isExpanded
    //                   ? Icons.keyboard_arrow_up
    //                   : Icons.keyboard_arrow_down,
    //               color: Colors.white,
    //             ),
    //             title: const Text(
    //               'dynamic text',
    //               style: TextStyle(color: Colors.white),
    //             ),
    //             children: [
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 20.0),
    //                 child: buildMenuItem(
    //                     text: 'dynamic text',
    //                     icon: Icons.arrow_right_alt_rounded,
    //                     onClicked: () {
    //                       widget.onChange("Uyku");
    //                     }),
    //               ),
    //             ]),
    //       ]),
    // );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.white;
    const hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
