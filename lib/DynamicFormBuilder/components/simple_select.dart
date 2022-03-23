// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../functions.dart';

class SimpleSelect extends StatefulWidget {
  const SimpleSelect({
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
  _SimpleSelect createState() => _SimpleSelect();
}

class _SimpleSelect extends State<SimpleSelect> {
  dynamic item;
  List<dynamic> DDListesi = [];
  var secilenItem, secilenUnit;

  @override
  void initState() {
    item = widget.item;
    DDListesi = item['VALUEDATASOURCE'];
    print(widget.item);
    super.initState();
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
    Widget unit = const SizedBox.shrink();

    if (item['UNIT']['DATASOURCE'] != "") {
      List<dynamic> unitList = item['UNIT']['DATASOURCE'];

      unit = Padding(
        padding: const EdgeInsets.only(left: 15),
        child: SizedBox(
          width: 200,
          height: 50,
          child: unitList.length == 1
              ? Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    unitList[0]["KEY"].toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                )
              : DropdownButtonHideUnderline(
                  child: DropdownButtonFormField(
                      isExpanded: true,
                      items: unitList.map((data) {
                        return DropdownMenuItem(
                            value: data, child: Text(data['KEY']));
                      }).toList(),
                      hint: const Text("Birim Seçiniz"),
                      value: secilenUnit,
                      validator: (value) {
                        if (value == "" || value == null) {
                          return "";
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        errorStyle: TextStyle(fontSize: 0.01),
                      ),
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          secilenUnit = value;
                        });

                        widget.onChange(widget.position,
                            unitValue: secilenUnit['KEY']);
                      }),
                ),
        ),
      );
    }

    Widget sectionPadding = const SizedBox.shrink();

    if (item['TABLEVEL'] != 0) {
      sectionPadding = const SizedBox(width: 50);
    }
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      child: Row(
        children: [
          sectionPadding,
          Expanded(flex: 25, child: label),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButtonFormField(
                        isExpanded: true,
                        items: DDListesi.map((data) {
                          return DropdownMenuItem(
                              value: data, child: Text(data['KEY']));
                        }).toList(),
                        hint: const Text("Seçiniz"),
                        value: secilenItem,
                        validator: (value) {
                          if (value == "" || value == null) {
                            return "";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                          errorStyle: TextStyle(fontSize: 0.01),
                        ),
                        onChanged: (value) {
                          setState(() {
                            secilenItem = value;

                            var formattedValue =
                                secilenItem['VALUE'].toString() +
                                    " - " +
                                    secilenItem['KEY'].toString();
                            widget.onChange(widget.position,
                                value: formattedValue);
                          });
                        }),
                  ),
                ),
                Expanded(flex: 3, child: unit)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
