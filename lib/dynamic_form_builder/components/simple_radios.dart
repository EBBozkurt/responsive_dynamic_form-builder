// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class SimpleRadios extends StatefulWidget {
  const SimpleRadios({
    Key? key,
    required this.item,
    required this.onChange,
    required this.position,
  }) : super(key: key);
  final dynamic item;
  final Function onChange;
  final int position;

  @override
  _SimpleRadios createState() => _SimpleRadios();
}

class _SimpleRadios extends State<SimpleRadios> {
  dynamic item;

  var tempGroupValue = -1;
  @override
  void initState() {
    super.initState();
    item = widget.item;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Widget infoLabel = const SizedBox.shrink();

    if (item['INFORMATIONTEXT'] != "") {
      infoLabel = Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Row(
          children: [
            const Icon(
              Icons.info_rounded,
              color: Colors.blue,
              size: 20,
            ),
            Text("  " + item['INFORMATIONTEXT'],
                style: const TextStyle(
                    fontSize: 16.0, fontStyle: FontStyle.italic)),
          ],
        ),
      );
    }
    Widget label = const SizedBox.shrink();

    label = Column(
      children: [
        Row(
          children: [
            Text(
              item['ROWNUMBERTEXT'].toString() + "   ",
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            Expanded(
              child: Text(
                item['LABEL'],
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ),
          ],
        ),
        infoLabel
      ],
    );

    Widget sectionPadding = const SizedBox.shrink();

    if (item['TABLEVEL'] != 0) {
      sectionPadding = SizedBox(width: item['TABLEVEL']);
    }

    List<Widget> radios = [];

    for (var i = 0; i < item['VALUEDATASOURCE'].length; i++) {
      radios.add(
        Expanded(
          child: Row(
            children: <Widget>[
              Radio<dynamic>(
                  value: item['VALUEDATASOURCE'][i]['VALUE'],
                  groupValue: tempGroupValue,
                  onChanged: (dynamic value) {
                    setState(() {
                      tempGroupValue = value;

                      widget.onChange(widget.position,
                          value:
                              item['VALUEDATASOURCE'][i]['VALUE'].toString() +
                                  " - " +
                                  item['VALUEDATASOURCE'][i]['KEY']);
                    });
                  }),
              Expanded(child: Text(item['VALUEDATASOURCE'][i]['KEY'])),
            ],
          ),
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      child: Row(
        children: [
          sectionPadding,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                label,
                Row(
                  children: radios,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey[850],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
