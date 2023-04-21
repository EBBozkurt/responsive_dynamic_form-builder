// ignore_for_file: avoid_print, non_constant_identifier_names, prefer_typing_uninitialized_variables, unused_local_variable

import 'package:dynamic_form_builder/dynamic_form_builder/components/simple_unit_select.dart';
import 'package:dynamic_form_builder/global_functions.dart';
import 'package:flutter/material.dart';

class SimpleSelect extends StatefulWidget {
  const SimpleSelect({
    Key? key,
    required this.item,
    required this.onChange,
    required this.position,
  }) : super(key: key);
  final dynamic item;
  final Function onChange;
  final int position;

  @override
  _SimpleSelect createState() => _SimpleSelect();
}

class _SimpleSelect extends State<SimpleSelect> {
  dynamic item;
  List<dynamic> DDListesi = [];
  List<dynamic> UnitDDListesi = [];
  var secilenItem, secilenUnit;

  int webExpandedValue1 = 29;
  int webExpandedValue2 = 11;

  int mobileExpandedValue1 = 23;
  int mobileExpandedValue2 = 27;

  @override
  void initState() {
    item = widget.item;

    if (item['VALUEDATASOURCE'] != null) {
      DDListesi = item['VALUEDATASOURCE'];
    } else {
      DDListesi = [];
    }

    super.initState();
  }

  //UnitValue Dropdown'nundan gelen veriyi setlememize yarıyan fonksiyon
  void unitValueOnChange(dynamic unitValue) {
    widget.onChange(widget.position, unitValue: unitValue);
    print("Unit Value Değişti");
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

    Widget unit = const SizedBox.shrink();
    List tempUnitList = item['UNITDATASOURCE'];
    if (tempUnitList.isNotEmpty) {
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
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
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
                            flex: 11,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButtonFormField(
                                  isExpanded: true,
                                  items: DDListesi.map((data) {
                                    return DropdownMenuItem(
                                        value: data['VALUE'].toString() +
                                            " - " +
                                            data['KEY'].toString(),
                                        child: Text(data['KEY']));
                                  }).toList(),
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

                                      widget.onChange(widget.position,
                                          value: value);
                                    });
                                  }),
                            ),
                          ),
                          Expanded(flex: 9, child: unit)
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
          ),
        ],
      ),
    );
  }
}
