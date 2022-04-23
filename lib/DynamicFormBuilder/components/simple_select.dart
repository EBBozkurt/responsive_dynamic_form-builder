// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:dynamic_form_builder/DynamicFormBuilder/components/simple_unit_select.dart';
import 'package:dynamic_form_builder/global_functions.dart';
import 'package:flutter/material.dart';

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
  List<dynamic> UnitDDListesi = [];
  var secilenItem, secilenUnit;

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
    item = widget.item;
    DDListesi = item['VALUEDATASOURCE'];

    ///TODO: DropDownButton'un default value'si var ise gösterilecek kısım
    // if (item["VALUE"] != "") {
    //   secilenItem =
    //       DDListesi.singleWhere((element) => element["VALUE"] == item['VALUE']);
    // }

    ///TODO: UNIT VALUE'NUN default value'si var ise gösterilecek kısım
    // if (item['UNITVALUE'] != "") {
    //   if (item['UNIT']['DATASOURCE'] != "") {
    //     UnitDDListesi = item['UNIT']['DATASOURCE'];
    //     secilenUnit = UnitDDListesi.singleWhere(
    //         (element) => element["KEY"] == item['UNITVALUE']);
    //   }
    //}

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
                Expanded(
                    flex: globalFunctions.isMobilePhone()
                        ? mobileExpandedValue4
                        : webExpandedValue4,
                    child: unit)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
