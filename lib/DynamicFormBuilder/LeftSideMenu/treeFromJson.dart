// ignore_for_file: file_names, avoid_print

import 'dart:convert';

import 'package:dynamic_form_builder/CustomTreeView/flutter_simple_treeview.dart';
import 'package:flutter/material.dart';

class TreeFromJson extends StatefulWidget {
  const TreeFromJson({
    Key? key,
    required this.onChange,
  }) : super(key: key);
  final Function onChange;

  @override
  _TreeFromJsonState createState() => _TreeFromJsonState();
}

class _TreeFromJsonState extends State<TreeFromJson> {
  final TreeController _treeController =
      TreeController(allNodesExpanded: false);

  String gelenVeri = json.encode({
    "folder": [
      {
        "id": 1,
        "name": "737669HPB2001",
        "type": "folder",
        "formID": "",
        "folder": [
          {
            "id": 2,
            "name": "TR10007-AKOVA",
            "type": "folder",
            "formID": "",
            "folder": [
              {
                "id": 21,
                "name": "10042",
                "type": "folder",
                "formID": "",
                "folder": [
                  {
                    "id": 22,
                    "name": "Day 1",
                    "type": "folder",
                    "formID": "",
                    "folder": [
                      {
                        "id": 23,
                        "type": "form",
                        "formID": 8,
                        "name": "Vital Signs",
                        "folder": []
                      },
                      {
                        "id": 24,
                        "type": "form",
                        "formID": 6,
                        "name": "Date Of Visit",
                        "folder": []
                      },
                      {
                        "id": 24,
                        "type": "form",
                        "formID": 7,
                        "name": "Randomization",
                        "folder": []
                      },
                    ]
                  },
                ]
              }
            ]
          }
        ]
      },
      {
        "id": 1,
        "name": "857669HPB2001",
        "type": "folder",
        "formID": "",
        "folder": [
          {
            "id": 2,
            "name": "TR10067-AVOKADO",
            "type": "folder",
            "formID": "",
            "folder": [
              {
                "id": 21,
                "name": "10049",
                "type": "folder",
                "formID": "",
                "folder": [
                  {
                    "id": 22,
                    "name": "Day 1",
                    "type": "folder",
                    "formID": "",
                    "folder": [
                      {
                        "id": 23,
                        "type": "form",
                        "formID": 1,
                        "name": "Vital Signs",
                        "folder": []
                      },
                      {
                        "id": 24,
                        "type": "form",
                        "formID": 2,
                        "name": "Date Of Visit",
                        "folder": []
                      },
                      {
                        "id": 24,
                        "type": "form",
                        "formID": 3,
                        "name":
                            "Randomizationbasfasfa  afasfasfas  fasfasfa s fasf as fsa",
                        "folder": []
                      },
                    ]
                  },
                ]
              }
            ]
          }
        ]
      },
    ]
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(child: buildTree()),
      ],
    );
  }

  /// Builds tree or error message out of the entered content.
  Widget buildTree() {
    var parsedJson = json.decode(gelenVeri);
    try {
      return TreeView(
        iconSize: 20,
        indent: 10,
        nodes: toTreeNodes(parsedJson),
        treeController: _treeController,
      );
    } on FormatException catch (e) {
      return Text(e.message);
    }
  }

  List<TreeNode> toTreeNodes(dynamic parsedJson) {
    List<TreeNode> result = [];
    Widget dynamicTitle = const SizedBox.shrink();

    if (parsedJson is Map<String, dynamic>) {
      for (int i = 0; i < parsedJson['folder'].length; i++) {
        var item = parsedJson['folder'][i];

        dynamicTitle = Row(
          children: [
            typeDetermine(item['type'].toString()),
            const SizedBox(width: 10),
            Expanded(
              child: InkWell(
                  onTap: () => widget.onChange(item['formID']),
                  child: Text(item['name'])),
            )
          ],
        );

        result.add(TreeNode(
            content: dynamicTitle, children: toTreeNodes(item['folder'])));
      }

      return result;
    }

    if (parsedJson is List<dynamic>) {
      return parsedJson
          .asMap()
          .map((i, element) {
            dynamicTitle = Row(
              children: [
                typeDetermine(element['type'].toString()),
                const SizedBox(width: 10),
                Text(element['name'])
              ],
            );
            return MapEntry(
                i,
                TreeNode(
                    content: dynamicTitle, children: toTreeNodes(element)));
          })
          .values
          .toList();
    }

    print(parsedJson.toString());
    return [TreeNode(content: Text(parsedJson.toString()))];
  }

  Icon typeDetermine(String type) {
    if (type == "folder") {
      return const Icon(Icons.folder, color: Colors.blue);
    } else if (type == "form") {
      return const Icon(Icons.account_tree_rounded, color: Colors.blue);
    } else {
      return const Icon(Icons.account_tree_rounded, color: Colors.blue);
    }
  }
}
