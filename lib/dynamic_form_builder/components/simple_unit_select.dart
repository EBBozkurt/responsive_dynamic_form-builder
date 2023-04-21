// ignore_for_file: avoid_print, non_constant_identifier_names, prefer_typing_uninitialized_variables, unused_local_variable

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

    //Eğer ki Value'muz var ise daha önceden doldurulmuş bir formu açmışız demektir ve bundan dolayı setleme işlemlerimizi yapıyoruz.
    if (item["UNITVALUE"] != "") {
      secilenUnitItem = item["UNITVALUE"];

      widget.onChange(item["UNITVALUE"]);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
                        value: data['VALUE'].toString() +
                            " - " +
                            data['KEY'].toString(),
                        child: Text(data['KEY']));
                  }).toList(),
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
                    setState(() {
                      secilenUnitItem = value;
                    });

                    widget.onChange(value);
                  }),
            ),
    );
  }
}
