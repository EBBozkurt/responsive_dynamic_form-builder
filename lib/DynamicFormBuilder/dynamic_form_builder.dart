// ignore_for_file: file_names, prefer_typing_uninitialized_variables, avoid_print

import 'dart:convert';

import 'package:dynamic_form_builder/DynamicFormBuilder/LeftSideMenu/treeFromJson.dart';
import 'package:dynamic_form_builder/DynamicFormBuilder/json_schema.dart';
import 'package:dynamic_form_builder/global_functions.dart';
import 'package:flutter/material.dart';

class DynamicFormBuilder extends StatefulWidget {
  const DynamicFormBuilder({Key? key}) : super(key: key);

  @override
  _DynamicFormBuilderState createState() => _DynamicFormBuilderState();
}

class _DynamicFormBuilderState extends State<DynamicFormBuilder> {
  Widget formWidget = const SizedBox.shrink();

//ISBOLD
//BACKGROUND COLOR

  String form = json.encode({
    'title': "Pittsburgh Uyku Kalite İndeksi (PUKİ)",
    'description': "Pittsburgh Sleep Quality Index (PSQI)",
    'formID': 1,
    'fields': [
      {
        "ID": 1,
        "ROWNUMBER": 1,
        "ROWNUMBERTEXT": "1",
        "TABLEVEL": 0,
        "ALIGNMENT": 0,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": true,
        "SECTIONHEADER": "NONE",
        "BACKGROUNDCOLOR": "",
        "NAME": "Unique ID 1",
        "LABEL": "Formu doldurduğunuz tarih?",
        "INFORMATIONTEXT": "Tarihi giriniz",
        "TYPE": "Tarih/Saat",
        "MAXLENGTH": 0,
        "REGEX": "",
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "VALUE": "",
        "VALUEDATASOURCE": [],
        "UNITVALUE": "",
        "UNITDATASOURCE": [],
      },
      {
        "ID": 2,
        "ROWNUMBER": 2,
        "ROWNUMBERTEXT": "2",
        "TABLEVEL": 0,
        "ALIGNMENT": 2,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": true,
        "SECTIONHEADER": "NONE",
        "BACKGROUNDCOLOR": "",
        "NAME": "Unique ID 2",
        "LABEL": "Geçen ay geceleri genellikle ne zaman yattınız?",
        "INFORMATIONTEXT": "Saat olarak yazınız.",
        "TYPE": "Sayısal Değer",
        "MAXLENGTH": 0,
        "REGEX": "",
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "VALUE": "",
        "VALUEDATASOURCE": [],
        "UNITVALUE": "",
        "UNITDATASOURCE": [
          {"VALUE": 0, "KEY": "AM"},
          {"VALUE": 1, "KEY": "PM"},
        ],
      },
      {
        "ID": 3,
        "ROWNUMBER": 3,
        "ROWNUMBERTEXT": "3",
        "TABLEVEL": 0,
        "ALIGNMENT": 2,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": true,
        "SECTIONHEADER": "NONE",
        "BACKGROUNDCOLOR": "",
        "NAME": "Unique ID 3",
        "LABEL": "Geçen ay geceleri ortalama vücut ısınız ne kadardı?",
        "INFORMATIONTEXT": "C ya da F olduğunu lütfen seçiniz.",
        "TYPE": "Sayısal Değer",
        "MAXLENGTH": 0,
        "REGEX": "",
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "VALUE": "",
        "VALUEDATASOURCE": [],
        "UNITVALUE": "",
        "UNITDATASOURCE": [
          {"VALUE": 0, "KEY": "C"},
          {"VALUE": 1, "KEY": "F"},
        ],
      },
      {
        "ID": 4,
        "ROWNUMBER": 4,
        "ROWNUMBERTEXT": "4",
        "TABLEVEL": 0,
        "ALIGNMENT": 2,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": true,
        "SECTIONHEADER": "NONE",
        "BACKGROUNDCOLOR": "",
        "NAME": "Unique ID 4",
        "LABEL": "Geçen ay geceleri kaç kahve içtiniz",
        "INFORMATIONTEXT": "",
        "TYPE": "Sayısal Değer (Tam sayı)",
        "MAXLENGTH": 0,
        "REGEX": "",
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "VALUE": "",
        "VALUEDATASOURCE": [],
        "UNITVALUE": "",
        "UNITDATASOURCE": [
          {"VALUE": 0, "KEY": "Adet"},
        ],
      },
      {
        "ID": 5,
        "ROWNUMBER": 5,
        "ROWNUMBERTEXT": "5",
        "TABLEVEL": 0,
        "ALIGNMENT": 1,
        "ISBOLD": true,
        "ISREQUIRED": false,
        "READONLY": false,
        "SHORTTEXT": true,
        "SECTIONHEADER": "SMALL",
        "BACKGROUNDCOLOR": "",
        "NAME": "Unique ID 5",
        "LABEL":
            "Geçen ay aşağıdaki durumlarda belirtilen uyku problemlerini ne sıklıkla yaşadınız?",
        "INFORMATIONTEXT": "",
        "TYPE": "",
        "MAXLENGTH": 0,
        "REGEX": "",
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "VALUE": "",
        "VALUEDATASOURCE": [],
        "UNITVALUE": "",
        "UNITDATASOURCE": [],
      },
      {
        "ID": 6,
        "ROWNUMBER": 6,
        "ROWNUMBERTEXT": "5.1",
        "TABLEVEL": 50,
        "ALIGNMENT": 0,
        "ISBOLD": true,
        "ISREQUIRED": false,
        "READONLY": false,
        "SHORTTEXT": true,
        "SECTIONHEADER": "NONE",
        "BACKGROUNDCOLOR": "",
        "NAME": "Unique ID 5.1",
        "LABEL": "30 dakika içinde uykuya dalamadınız",
        "INFORMATIONTEXT": "",
        "TYPE": "Çoktan Seçmeli (DD)",
        "MAXLENGTH": 0,
        "REGEX": "",
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "VALUE": "",
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Hiç"},
          {"VALUE": 1, "KEY": "Haftada 1'den az"},
          {"VALUE": 2, "KEY": "1-2 kez"},
          {"VALUE": 3, "KEY": "3'ten çok"},
        ],
        "UNITVALUE": "",
        "UNITDATASOURCE": [],
      },
      {
        "ID": 7,
        "ROWNUMBER": 7,
        "ROWNUMBERTEXT": "5.2",
        "TABLEVEL": 50,
        "ALIGNMENT": 0,
        "ISBOLD": true,
        "ISREQUIRED": false,
        "READONLY": false,
        "SHORTTEXT": true,
        "SECTIONHEADER": "NONE",
        "BACKGROUNDCOLOR": "",
        "NAME": "Unique ID 5.2",
        "LABEL": "Tuvalete gittiniz",
        "INFORMATIONTEXT": "",
        "TYPE": "Çoktan Seçmeli (Radio)",
        "MAXLENGTH": 0,
        "REGEX": "",
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Hiç"},
          {"VALUE": 1, "KEY": "Haftada 1'den az"},
          {"VALUE": 2, "KEY": "1-2 kez"},
          {"VALUE": 3, "KEY": "3'ten çok"},
        ],
        "UNITVALUE": "",
        "UNITDATASOURCE": [],
      },
      {
        "ID": 8,
        "ROWNUMBER": 8,
        "ROWNUMBERTEXT": "6",
        "TABLEVEL": 0,
        "ALIGNMENT": 0,
        "ISBOLD": true,
        "ISREQUIRED": false,
        "READONLY": false,
        "SHORTTEXT": true,
        "SECTIONHEADER": "NONE",
        "BACKGROUNDCOLOR": "",
        "NAME": "Unique ID 8",
        "LABEL": "Bir yatak partneriniz veya oda arkadaşınız var mı?",
        "INFORMATIONTEXT": "",
        "TYPE": "Çoktan Seçmeli (Çoklu)",
        "MAXLENGTH": 0,
        "REGEX": "",
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "VALUE": "",
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Bir yatak partneriniz veya oda arkadaşı yok"},
          {"VALUE": 1, "KEY": "Diğer odada bir partneri veya oda arkadaşı var"},
          {"VALUE": 2, "KEY": "Partneri aynı odada fakat aynı yatakta değil"},
          {"VALUE": 3, "KEY": "Partner aynı yatakta"},
        ],
        "UNITVALUE": "",
        "UNITDATASOURCE": [],
      },
      {
        "ID": 9,
        "ROWNUMBER": 9,
        "ROWNUMBERTEXT": "",
        "TABLEVEL": 0,
        "ALIGNMENT": 1,
        "ISBOLD": true,
        "ISREQUIRED": false,
        "READONLY": false,
        "SHORTTEXT": true,
        "SECTIONHEADER": "BIG",
        "BACKGROUNDCOLOR": "",
        "NAME": "Unique ID 9",
        "LABEL": "Kişisel Veriler",
        "INFORMATIONTEXT": "",
        "TYPE": "",
        "MAXLENGTH": 0,
        "REGEX": "",
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "VALUE": "",
        "VALUEDATASOURCE": [],
        "UNITVALUE": "",
        "UNITDATASOURCE": [],
      },
      {
        "ID": 10,
        "ROWNUMBER": 10,
        "ROWNUMBERTEXT": "7",
        "TABLEVEL": 0,
        "ALIGNMENT": 0,
        "ISBOLD": true,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": false,
        "SECTIONHEADER": "NONE",
        "BACKGROUNDCOLOR": "",
        "NAME": "Unique ID 10",
        "LABEL": "E-postanızı giriniz",
        "INFORMATIONTEXT": "",
        "TYPE": "Serbest Metin",
        "MAXLENGTH": 0,
        "REGEX": "[0-9@]",
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "VALUE": "",
        "VALUEDATASOURCE": [],
        "UNITVALUE": "",
        "UNITDATASOURCE": [],
      },
    ],
  });
  dynamic response;

  void formOnChange(int formID) {
    setState(() {
      selectedWidget(formID);
    });
  }

  @override
  void initState() {
    formOnChange(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return globalFunctions.isMobilePhone()
        ? _dynamicFormBuilderBodyForMobile()
        : _dynamicFormBuilderBodyForWeb();
  }

  Widget _dynamicFormBuilderBodyForWeb() {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Dynamic Form Builder"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10.5, right: 0, left: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 325,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TreeFromJson(onChange: formOnChange),
                  )),
              Expanded(child: formWidget),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dynamicFormBuilderBodyForMobile() {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Dynamic Form Builder"),
      ),
      body: Column(
        children: [
          TreeFromJson(onChange: formOnChange),
          Divider(
            thickness: 4,
            height: 10,
            color: Colors.grey.shade500,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Expanded(
                  child: formWidget,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  selectedWidget(int formID) {
    print("selectedWidget çalıştı, FORM ID:  " + formID.toString());

    if (formID == 1) {
      formWidget = JsonSchema(
        form: form,
        autovalidateMode: AutovalidateMode.always,
        onChanged: (dynamic response) {
          response = response;
          print(response);
        },
        actionSave: (data) {
          print(data);
        },
        buttonSave: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 10, 170, 223),
          ),
          child: const Center(
            child: Text("Gönder",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
      );
    } else {
      formWidget = Container();
    }
  }
}
