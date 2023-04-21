// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables, unused_local_variable

import 'package:dynamic_form_builder/dynamic_form_builder/components/simple_unit_select.dart';
import 'package:dynamic_form_builder/global_functions.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SimpleText extends StatefulWidget {
  const SimpleText({
    Key? key,
    required this.item,
    required this.onChange,
    required this.position,
  }) : super(key: key);
  final dynamic item;
  final Function onChange;
  final int position;

  @override
  _SimpleText createState() => _SimpleText();
}

class _SimpleText extends State<SimpleText> {
  dynamic item;
  var secilenUnit;

  int webExpandedShortTextValue1 = 29;
  int webExpandedShortTextValue2 = 11;
  int webExpandedLongTextValue1 = 79;
  int webExpandedLongTextValue2 = 11;

  int mobileExpandedShortTextValue1 = 9;
  int mobileExpandedShortTextValue2 = 11;
  int mobileExpandedLongValue1 = 34;
  int mobileExpandedLongValue2 = 11;

  TextEditingController textFormFieldController = TextEditingController();

  @override
  void initState() {
    item = widget.item;

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
        infoLabel,
        const SizedBox(width: 15),
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
          item['SHORTTEXT']
              ? Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Expanded(
                            flex: globalFunctions.isMobilePhone()
                                ? mobileExpandedShortTextValue1
                                : webExpandedShortTextValue1,
                            child: label,
                          ),
                          Expanded(
                            flex: globalFunctions.isMobilePhone()
                                ? mobileExpandedShortTextValue2
                                : webExpandedShortTextValue2,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 11,
                                  child: TextFormField(
                                    validator: (value) {
                                      return checkRegexValidations(value!);
                                    },
                                    onChanged: (String value) {
                                      item['value'] = value;

                                      widget.onChange(widget.position,
                                          value: value);
                                    },
                                    textAlign: item["ALIGNMENT"] == 0
                                        ? TextAlign.left
                                        : item["ALIGNMENT"] == 1
                                            ? TextAlign.right
                                            : TextAlign.center,
                                    controller: textFormFieldController,
                                    inputFormatters: [
                                      checkTextInputFormatter(
                                          item['TYPE'], item['INPUTMASK'])
                                    ],
                                    keyboardType: item['TYPE']
                                            .toString()
                                            .contains("Sayısal Değer")
                                        ? TextInputType.number
                                        : TextInputType.text,
                                    maxLength: item['MAXLENGTH'] == 0
                                        ? null
                                        : item['MAXLENGTH'],
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
                )
              : Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      label,
                      Row(
                        children: [
                          Expanded(
                            flex: globalFunctions.isMobilePhone()
                                ? mobileExpandedLongValue1
                                : webExpandedLongTextValue1,
                            child: TextFormField(
                              validator: (value) {
                                return checkRegexValidations(value!);
                              },
                              onChanged: (String value) {
                                item['value'] = value;

                                widget.onChange(widget.position, value: value);
                              },
                              textAlign: item["ALIGNMENT"] == 0
                                  ? TextAlign.left
                                  : item["ALIGNMENT"] == 1
                                      ? TextAlign.right
                                      : TextAlign.center,
                              controller: textFormFieldController,
                              inputFormatters: [
                                checkTextInputFormatter(
                                    item['TYPE'], item['INPUTMASK'])
                              ],
                              keyboardType: item['TYPE']
                                      .toString()
                                      .contains("Sayısal Değer")
                                  ? TextInputType.number
                                  : TextInputType.text,
                              maxLength: item['MAXLENGTH'] == 0
                                  ? null
                                  : item['MAXLENGTH'],
                            ),
                          ),
                          Expanded(
                              flex: globalFunctions.isMobilePhone()
                                  ? mobileExpandedLongValue2
                                  : webExpandedLongTextValue2,
                              child: unit)
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

  dynamic checkRegexValidations(String value) {
    if (value == "") {
      return "";
    }
    //Bize herhangi bir regex geliyor mu ona bakıyoruz.
    else if (item['REGEX'] != "") {
      if (RegExp(item['REGEX']).hasMatch(value)) {
        return null;
      } else {
        return "";
      }
    } else {
      return null;
    }
  }

  TextInputFormatter checkTextInputFormatter(String type, String inputMask) {
    if (item['TYPE'] == "Sayısal Değer") {
      if (inputMask != "") {
        return MaskTextInputFormatter(
            mask: inputMask,
            filter: {"#": RegExp(r'[0-9.:]')},
            type: MaskAutoCompletionType.lazy);
      } else {
        return FilteringTextInputFormatter.allow(RegExp('[0-9.:]'));
      }
    } else if (item['TYPE'] == "Sayısal Değer (Tam Sayı)") {
      if (inputMask != "") {
        return MaskTextInputFormatter(
            mask: inputMask,
            filter: {"#": RegExp('[0-9]')},
            type: MaskAutoCompletionType.lazy);
      } else {
        return FilteringTextInputFormatter.allow(RegExp('[0-9]'));
      }
    } else {
      if (inputMask != "") {
        return MaskTextInputFormatter(
            mask: inputMask,
            filter: {"#": RegExp(r'.*')},
            type: MaskAutoCompletionType.lazy);
      } else {
        return FilteringTextInputFormatter.allow(RegExp(r'.*'));
      }
    }
  }
}
