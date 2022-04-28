import 'package:date_time_picker/date_time_picker.dart';
import 'package:dynamic_form_builder/global_functions.dart';
import 'package:flutter/material.dart';

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

  int webExpandedValue1 = 16;
  int webExpandedValue2 = 4;
  int webExpandedValue3 = 12;
  int webExpandedValue4 = 8;

  int mobileExpandedValue1 = 6;
  int mobileExpandedValue2 = 4;
  int mobileExpandedValue3 = 6;
  int mobileExpandedValue4 = 4;

  @override
  void initState() {
    super.initState();
    dateController.text = DateTime.now().toString();
    item = widget.item;

    if (item["VALUE"] != "") {
      dateController.text = item["VALUE"];
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

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            sectionPadding,
            Expanded(
                flex: globalFunctions.isMobilePhone()
                    ? mobileExpandedValue1
                    : webExpandedValue1,
                child: label),
            Expanded(
              flex: globalFunctions.isMobilePhone()
                  ? mobileExpandedValue2
                  : webExpandedValue2,
              child: Row(
                children: [
                  Expanded(
                    flex: globalFunctions.isMobilePhone()
                        ? mobileExpandedValue3
                        : webExpandedValue3,
                    child: DateTimePicker(
                        textAlignVertical: TextAlignVertical.top,
                        readOnly: item['READONLY'],
                        controller: dateController,
                        type: DateTimePickerType.date,
                        dateMask: 'dd.MM.yyyy',
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                        onSaved: (value) {
                          widget.onChange(widget.position, value: value);
                        },
                        onChanged: (value) {
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
                  Expanded(
                      flex: globalFunctions.isMobilePhone()
                          ? mobileExpandedValue4
                          : webExpandedValue4,
                      child: const SizedBox())
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
}
