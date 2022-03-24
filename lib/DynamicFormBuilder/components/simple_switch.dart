import 'package:flutter/material.dart';

class SimpleSwitch extends StatefulWidget {
  const SimpleSwitch({
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
  _SimpleSwitch createState() => _SimpleSwitch();
}

class _SimpleSwitch extends State<SimpleSwitch> {
  dynamic item;

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
    if (item['value'] == null) {
      item['value'] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      child: Row(children: <Widget>[
        Expanded(child: Text(item['label'])),
        Switch(
          value: item['value'] ?? false,
          onChanged: (bool value) {
            setState(() {
              item['value'] = value;
              widget.onChange(widget.position, value);
            });
          },
        ),
      ]),
    );
  }
}
