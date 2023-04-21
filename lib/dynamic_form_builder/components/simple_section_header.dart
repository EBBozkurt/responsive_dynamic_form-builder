// ignore_for_file: avoid_print, unused_local_variable

import 'package:dynamic_form_builder/global_functions.dart';
import 'package:flutter/material.dart';

class SimpleSectionHeader extends StatefulWidget {
  const SimpleSectionHeader({
    Key? key,
    required this.item,
  }) : super(key: key);
  final dynamic item;

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
    double screenWidth = MediaQuery.of(context).size.width;
    Widget smallSectionHeader = const SizedBox.shrink();
    if (item['SECTIONHEADER'] == "SMALL") {
      smallSectionHeader = Container(
        color: item['BACKGROUNDCOLOR'] != ""
            ? Color(globalFunctions.getColorFromHex(item['BACKGROUNDCOLOR']))
            : Colors.blueAccent.shade400,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                item['ROWNUMBERTEXT'].toString() + "   ",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              Expanded(
                child: Text(
                  item['LABEL'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget bigSectionHeader = const SizedBox.shrink();

    if (item['SECTIONHEADER'] == "BIG") {
      bigSectionHeader = Container(
        padding: const EdgeInsets.all(10),
        color: item['BACKGROUNDCOLOR'] != ""
            ? item['BACKGROUNDCOLOR']
            : Colors.blueAccent.shade400,
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
