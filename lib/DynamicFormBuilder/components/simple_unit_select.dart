// ignore_for_file: avoid_print, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SimpleUnitSelect extends StatefulWidget {
  const SimpleUnitSelect({
    Key? key,
    required this.item,
    required this.onChange,
  }) : super(key: key);
  final dynamic item;
  final Function onChange;

  @override
  _SimpleUnitSelect createState() => _SimpleUnitSelect();
}

class _SimpleUnitSelect extends State<SimpleUnitSelect> {
  dynamic item;
  List<dynamic> UnitDDListesi = [];
  var secilenUnitItem;

  @override
  void initState() {
    item = widget.item;

    UnitDDListesi = item['UNITDATASOURCE'];
    // secilenUnitItem = UnitDDListesi.singleWhere(
    //     (element) => element["KEY"] == item['UNITVALUE']);

    // if (item['UNITVALUE'] != "") {
    //   if (item['UNIT']['DATASOURCE'] != "") {
    //     UnitDDListesi = item['UNIT']['DATASOURCE'];
    //     secilenUnit = UnitDDListesi.singleWhere(
    //         (element) => element["KEY"] == item['UNITVALUE']);
    //   }
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: UnitDDListesi.length == 1
          ? Container(
              alignment: Alignment.centerLeft,
              child: Text(
                UnitDDListesi[0]["KEY"].toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            )
          : DropdownButtonHideUnderline(
              child: DropdownButtonFormField(
                  isExpanded: true,
                  items: UnitDDListesi.map((data) {
                    return DropdownMenuItem(
                        value: data, child: Text(data['KEY']));
                  }).toList(),
                  hint: const Text("Seçiniz"),
                  value: secilenUnitItem,
                  validator: (value) {
                    if (value == "" || value == null) {
                      return "";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                      errorStyle: TextStyle(fontSize: 0.01)),
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      secilenUnitItem = value;
                    });

                    var formattedValue = secilenUnitItem['VALUE'].toString() +
                        " - " +
                        secilenUnitItem['KEY'].toString();

                    widget.onChange(formattedValue);
                  }),
            ),
    );
  }
}
