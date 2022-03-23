import 'dart:convert';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String responseBody = json.encode({
    "id": 0,
    "name": "A",
    "children": [
      {
        "id": 1,
        "name": "Aa",
        "children": [
          {"id": 2, "name": "Aa1", "children": null}
        ]
      },
      {
        "id": 3,
        "name": "Ab",
        "children": [
          {"id": 4, "name": "Ab1", "children": null},
          {"id": 5, "name": "Ab2", "children": null}
        ]
      }
    ]
  });

  @override
  Widget build(BuildContext context) {
    Map mapBody = jsonDecode(responseBody);

    return SafeArea(
      child: Scaffold(
        body: printGroupTree(
          mapBody,
        ),
      ),
    );
  }

  printGroupTree(
    Map group, {
    double level = 0,
  }) {
    if (group['children'] != null) {
      List<Widget> subGroups = [];

      for (Map subGroup in group['children']) {
        subGroups.add(
          printGroupTree(
            subGroup,
            level: level + 1,
          ),
        );
      }

      // return Parent(
      //   parent: _card(
      //     group['name'],
      //     level * 20,
      //   ),
      //   childList: ChildList(
      //     children: subGroups,
      //   ),
      // );
    } else {
      return _card(
        group['name'],
        level * 20,
      );
    }
  }

  Widget _card(
    String groupName,
    double leftPadding,
  ) {
    return Container(
      padding: EdgeInsets.only(
        left: leftPadding + 5,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
      ),
      height: 100,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 250,
            child: Row(
              children: <Widget>[
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Rubik%27s_cube.svg/220px-Rubik%27s_cube.svg.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Flexible(
                  child: Text(
                    'SomeText',
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          InkWell(
            //TODO:Empty method here
            onTap: () {},
            child: const Icon(
              Icons.group_add,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
