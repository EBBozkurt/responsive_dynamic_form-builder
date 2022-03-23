// ignore_for_file: avoid_print

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
  @override
  void initState() {
    super.initState();
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
          item['SHORTTEXT']
              ? Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Expanded(
                              flex: 17,
                              child: Row(
                                children: [
                                  label,
                                  const SizedBox(width: 15),
                                ],
                              )),
                          Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: TextFormField(
                                    textAlign: item["ISNUMERIC"]
                                        ? TextAlign.right
                                        : TextAlign.left,
                                    controller: null,
                                    maxLines:
                                        item['TYPE'] == "TextArea" ? 10 : 1,
                                    onChanged: (String value) {
                                      item['value'] = value;
                                      // _handleChanged();
                                      //  print(value);

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
                                Expanded(flex: 3, child: unit)
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
                      Row(
                        children: [
                          label,
                          const SizedBox(height: 15),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 86,
                            child: TextFormField(
                              textAlign: item["ISNUMERIC"]
                                  ? TextAlign.right
                                  : TextAlign.left,
                              controller: null,
                              maxLines: item['TYPE'] == "TextArea" ? 10 : 1,
                              onChanged: (String value) {
                                item['value'] = value;
                                // _handleChanged();
                                //  print(value);

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
                          Expanded(flex: 4, child: unit)
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
