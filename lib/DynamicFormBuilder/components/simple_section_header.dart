// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../functions.dart';

class SimpleSectionHeader extends StatefulWidget {
  const SimpleSectionHeader({
    Key? key,
    required this.item,
    this.errorMessages = const {},
    this.validations = const {},
    this.decorations = const {},
    this.keyboardTypes = const {},
  }) : super(key: key);
  final dynamic item;

  final Map errorMessages;
  final Map validations;
  final Map decorations;
  final Map keyboardTypes;

  @override
  _SimpleSectionHeader createState() => _SimpleSectionHeader();
}

class _SimpleSectionHeader extends State<SimpleSectionHeader> {
  dynamic item;
  @override
  void initState() {
    super.initState();
    item = widget.item;
  }

  @override
  Widget build(BuildContext context) {
    Widget smallSectionHeader = const SizedBox.shrink();
    if (item['VALUE'] == "Small Section Header") {
      smallSectionHeader = Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            item['ROWNUMBER'].toString() + "   ",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Text(
            item['LABEL'],
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          )
        ],
      );
    }

    Widget bigSectionHeader = const SizedBox.shrink();

    if (item['VALUE'] == "Big Section Header") {
      bigSectionHeader = Container(
        padding: const EdgeInsets.all(10),
        color: Colors.amberAccent,
        child: Center(
          child: Text(
            item['LABEL'],
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      child: Column(
        children: [
          smallSectionHeader,
          bigSectionHeader,
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
