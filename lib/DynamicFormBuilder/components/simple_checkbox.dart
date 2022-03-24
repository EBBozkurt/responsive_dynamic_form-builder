import 'package:flutter/material.dart';

import '../functions.dart';

class SimpleListCheckbox extends StatefulWidget {
  const SimpleListCheckbox({
    Key? key,
    required this.item,
    required this.onChange,
    required this.position,
    this.errorMessages = const {},
    this.validations = const {},
    this.decorations = const {},
    this.keyboardTypes = const {},
  }) : super(key: key);
  final dynamic item;
  final Function onChange;
  final int position;
  final Map errorMessages;
  final Map validations;
  final Map decorations;
  final Map keyboardTypes;

  @override
  _SimpleListCheckbox createState() => _SimpleListCheckbox();
}

class _SimpleListCheckbox extends State<SimpleListCheckbox> {
  dynamic item;
  List<dynamic> selectItems = [];

  String? isRequired(item, value) {
    if (value.isEmpty) {
      return widget.errorMessages[item['key']] ?? 'Please enter some text';
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    item = widget.item;
    for (var i = 0; i < item['VALUEDATASOURCE'].length; i++) {
      if (item['VALUEDATASOURCE'][i]['VALUE'] == true) {
        selectItems.add(i);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
    if (Fun.labelHidden(item)) {
      checkboxes.add(Column(
        children: [
          Row(
            children: [
              Text(
                item['ROWNUMBER'].toString() + "   ",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              Text(
                item['LABEL'],
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ],
          ),
          infoLabel
        ],
      ));
    }
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
              value: item['VALUEDATASOURCE'][i]['VALUE'],
              onChanged: (bool? value) {
                setState(() {
                  item['VALUEDATASOURCE'][i]['VALUE'] = value;

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
                  //_handleChanged();
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
      child: Row(
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
    );
  }
}
