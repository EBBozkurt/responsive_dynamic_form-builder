// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class SimpleListCheckbox extends StatefulWidget {
  const SimpleListCheckbox({
    Key? key,
    required this.item,
    required this.onChange,
    required this.position,
  }) : super(key: key);
  final dynamic item;
  final Function onChange;
  final int position;

  @override
  _SimpleListCheckbox createState() => _SimpleListCheckbox();
}

class _SimpleListCheckbox extends State<SimpleListCheckbox> {
  dynamic item;
  List<dynamic> selectItems = [];
  List selected = [];

  @override
  void initState() {
    super.initState();
    item = widget.item;

    List tempListForSelected = item['VALUEDATASOURCE'];

    selected =
        List<bool>.generate(tempListForSelected.length, (int index) => false);
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

    List<Widget> checkboxes = [];

    checkboxes.add(Column(
      children: [
        Row(
          children: [
            Text(
              item['ROWNUMBERTEXT'].toString() + "   ",
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            Text(
              item['LABEL'],
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ],
        ),
        infoLabel
      ],
    ));
    Widget sectionPadding = const SizedBox.shrink();

    if (item['TABLEVEL'] != 0) {
      sectionPadding = SizedBox(width: item['TABLEVEL']);
    }

    for (var i = 0; i < item['VALUEDATASOURCE'].length; i++) {
      checkboxes.add(
        Row(
          children: <Widget>[
            const SizedBox(width: 25),
            Checkbox(
              value: selected[i],
              onChanged: (bool? value) {
                setState(() {
                  item['VALUEDATASOURCE'][i]['VALUE'] = value;

                  selected[i] = value;

                  if (value!) {
                    selectItems.add(i.toString() +
                        " - " +
                        item['VALUEDATASOURCE'][i]['KEY']);
                  } else {
                    selectItems.remove(i.toString() +
                        " - " +
                        item['VALUEDATASOURCE'][i]['KEY']);
                  }
                  widget.onChange(widget.position, value: selectItems);
                });
              },
            ),
            Expanded(child: Text(item['VALUEDATASOURCE'][i]['KEY'])),
          ],
        ),
      );
    }
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      child: Column(
        children: [
          Row(
            children: [
              sectionPadding,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: checkboxes,
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.grey[850],
          ),
        ],
      ),
    );
  }
}
