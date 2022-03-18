// ignore_for_file: file_names, avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';

class TreeFromJson extends StatefulWidget {
  const TreeFromJson({Key? key}) : super(key: key);

  @override
  _TreeFromJsonState createState() => _TreeFromJsonState();
}

class _TreeFromJsonState extends State<TreeFromJson> {
  final TreeController _treeController =
      TreeController(allNodesExpanded: false);

  String gelenVeri = json.encode({
    "employee": {
      "name": "sonoo",
      "level": 56,
      "married": true,
      "hobby": null,
      "employee": {
        "name": "sonoo",
        "level": 56,
        "married": true,
        "hobby": null
      },
    },
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
    try {
      var parsedJson = json.decode(gelenVeri);
      return TreeView(
        nodes: toTreeNodes(parsedJson),
        treeController: _treeController,
      );
    } on FormatException catch (e) {
      return Text(e.message);
    }
  }

  List<TreeNode> toTreeNodes(dynamic parsedJson) {
    if (parsedJson is Map<String, dynamic>) {
      return parsedJson.keys.map((key) {
        print(key);
        return TreeNode(
            content: Text('$key:'), children: toTreeNodes(parsedJson[key]));
      }).toList();
    }

    return [
      TreeNode(
          content: InkWell(
        child: Text(parsedJson.toString()),
        onTap: () {
          print(parsedJson.toString());
        },
      ))
    ];
  }
}
