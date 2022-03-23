import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import '../functions.dart';

class SimpleDate extends StatefulWidget {
  const SimpleDate({
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
  _SimpleDate createState() => _SimpleDate();
}

class _SimpleDate extends State<SimpleDate> {
  dynamic item;
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dateController.text = DateTime.now().toString();
    item = widget.item;
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
    Widget label = const SizedBox.shrink();
    if (Fun.labelHidden(item)) {
      label = Column(
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
      );
    }
    Widget sectionPadding = const SizedBox.shrink();

    if (item['TABLEVEL'] != 0) {
      sectionPadding = const SizedBox(width: 50);
    }

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(flex: 17, child: label),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: DateTimePicker(
                        textAlignVertical: TextAlignVertical.top,
                        readOnly: item['READONLY'],
                        controller: dateController,
                        type: DateTimePickerType.date,
                        dateMask: 'dd.MM.yyyy',
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                        onSaved: (value) {
                          item['value'] = value;
                          widget.onChange(widget.position, value: value);
                        },
                        onChanged: (value) {
                          item['value'] = value;
                          widget.onChange(widget.position, value: value);
                        },
                        validator: (value) {
                          if (value == "" || value == null) {
                            return "";
                          } else {
                            return null;
                          }
                        }),
                  ),
                  const Expanded(flex: 3, child: SizedBox())
                ],
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1,
          color: Colors.grey[850],
        ),
      ],
    );
  }

  Future selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now().subtract(const Duration(days: 360)),
        firstDate: DateTime.now().subtract(const Duration(days: 360)),
        lastDate: DateTime.now().add(const Duration(days: 360)));
    if (picked != null) {
      String date =
          "${picked.year.toString()}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";
      setState(() {
        item['value'] = date;
        widget.onChange(widget.position, date);
      });
    }
  }
}
