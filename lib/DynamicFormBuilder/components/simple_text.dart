// ignore_for_file: avoid_print

import 'package:dynamic_form_builder/DynamicFormBuilder/components/simple_unit_select.dart';
import 'package:flutter/material.dart';

import '../functions.dart';
import 'package:flutter/services.dart';

class SimpleText extends StatefulWidget {
  const SimpleText({
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
  _SimpleText createState() => _SimpleText();
}

class _SimpleText extends State<SimpleText> {
  dynamic item;
  var secilenUnit;
  List<dynamic> UnitDDListesi = [];

  TextEditingController textFormFieldController = TextEditingController();

  @override
  void initState() {
    item = widget.item;

    // if (item["VALUE"] != "") {
    //   textFormFieldController.text = item["VALUE"];
    // }

    // if (item['UNITVALUE'] != "") {
    //   if (item['UNIT']['DATASOURCE'] != "") {
    //     UnitDDListesi = item['UNIT']['DATASOURCE'];
    //     secilenUnit = UnitDDListesi.singleWhere(
    //         (element) => element["KEY"] == item['UNITVALUE']);
    //   }
    // }
    super.initState();
  }

  //UnitValue Dropdown'nundan gelen veriyi setlememize yarıyan fonksiyon
  void unitValueOnChange(dynamic unitValue) {
    widget.onChange(widget.position, unitValue: unitValue);
    print("Unit Value Değişti");
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
              Expanded(
                child: Text(
                  item['LABEL'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
            ],
          ),
          infoLabel,
          const SizedBox(width: 15),
        ],
      );
    }
    Widget unit = const SizedBox.shrink();

    if (item['UNIT']['DATASOURCE'] != "") {
      UnitDDListesi = item['UNIT']['DATASOURCE'];

      unit = Padding(
        padding: const EdgeInsets.only(left: 15),
        child: SizedBox(
            width: 200,
            height: 50,
            child: SimpleUnitSelect(item: item, onChange: unitValueOnChange)),
      );
    }

    Widget sectionPadding = const SizedBox.shrink();

    if (item['TABLEVEL'] != 0) {
      sectionPadding = SizedBox(width: item['TABLEVEL']);
    }

    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      child: Row(
        children: [
          sectionPadding,
          item['SHORTTEXT']
              ? Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Expanded(
                            flex: 16,
                            child: label,
                          ),
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 12,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == "" || value == null) {
                                        return "";
                                      } else {
                                        return null;
                                      }
                                    },
                                    textAlign: item["ISNUMERIC"]
                                        ? TextAlign.right
                                        : TextAlign.left,
                                    controller: textFormFieldController,
                                    onChanged: (String value) {
                                      item['value'] = value;

                                      widget.onChange(widget.position,
                                          value: value);
                                    },
                                    inputFormatters: [
                                      item['ISNUMERIC']
                                          ? FilteringTextInputFormatter.allow(
                                              RegExp('[0-9.:]'))
                                          : FilteringTextInputFormatter.allow(
                                              RegExp('[a-zA-Z0-9ÇçğĞİüÜöÖ.,:]'))
                                    ],
                                    obscureText: item['TYPE'] == "Password"
                                        ? true
                                        : false,
                                    keyboardType: item['ISNUMERIC']
                                        ? TextInputType.number
                                        : TextInputType.text,
                                  ),
                                ),
                                Expanded(flex: 8, child: unit)
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
                  ),
                )
              : Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      label,
                      Row(
                        children: [
                          Expanded(
                            flex: 83,
                            child: TextFormField(
                              validator: (value) {
                                if (value == "" || value == null) {
                                  return "";
                                } else {
                                  return null;
                                }
                              },
                              textAlign: item["ISNUMERIC"]
                                  ? TextAlign.right
                                  : TextAlign.left,
                              controller: textFormFieldController,
                              onChanged: (String value) {
                                item['value'] = value;

                                widget.onChange(widget.position, value: value);
                              },
                              inputFormatters: [
                                item['ISNUMERIC']
                                    ? FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]'))
                                    : FilteringTextInputFormatter.allow(
                                        RegExp(""))
                              ],
                              obscureText:
                                  item['TYPE'] == "Password" ? true : false,
                              keyboardType: item['ISNUMERIC']
                                  ? TextInputType.number
                                  : TextInputType.text,
                            ),
                          ),
                          Expanded(flex: 7, child: unit)
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey[850],
                      ),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
