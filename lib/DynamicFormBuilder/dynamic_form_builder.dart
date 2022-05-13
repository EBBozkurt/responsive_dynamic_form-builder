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
    "formID": 1,
    "title": "Pittsburgh Uyku Kalite İndeksi (PUKİ) 2",
    "description": "Pittsburgh Sleep Quality Index (PSQI)",
    "fields": [
      {
        "ID": 1,
        "ROWNUMBER": 1,
        "ROWNUMBERTEXT": "1",
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": false,
        "ALIGNMENT": 0,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": "NONE",
        "NAME": "Tarih",
        "INFORMATIONTEXT": "Tarihi giriniz",
        "TYPE": "Tarih/Saat",
        "LABEL": "Formu doldurduğunuz tarih?",
        "VALUE": "",
        "MAXLENGTH": 0,
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "REGEX": "",
        "UNITTYPE": 0,
        "UNITVALUE": "",
        "VALUEDATASOURCE": [],
        "UNITDATASOURCE": [
          {"KEY": "", "VALUE": 0}
        ]
      },
      {
        "ID": 2,
        "ROWNUMBER": 2,
        "ROWNUMBERTEXT": "2",
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": true,
        "ALIGNMENT": 2,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": "NONE",
        "NAME": "soru1",
        "INFORMATIONTEXT": "Saat olarak yazınız.",
        "TYPE": "Serbest Metin",
        "LABEL": "Geçen ay geceleri genellikle ne zaman yattınız?",
        "VALUE": "",
        "MAXLENGTH": 0,
        "INPUTMASK": "##:##",
        "DISPLAYFORMAT": "##:##",
        "REGEX": "",
        "UNITTYPE": 1,
        "UNITVALUE": "",
        "VALUEDATASOURCE": [],
        "UNITDATASOURCE": [
          {"KEY": "AM", "VALUE": 0},
          {"KEY": "PM", "VALUE": 1}
        ]
      },
      {
        "ID": 3,
        "ROWNUMBER": 3,
        "ROWNUMBERTEXT": "3",
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": false,
        "ALIGNMENT": 2,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": "NONE",
        "NAME": "soru 2",
        "INFORMATIONTEXT": "C° ya da F° olduğunu lütfen seçiniz.",
        "TYPE": "Sayısal Değer",
        "LABEL": "Geçen ay geceleri ortalama vücut ısınız ne kadardı?",
        "VALUE": "",
        "MAXLENGTH": 0,
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "REGEX": "",
        "UNITTYPE": 1,
        "UNITVALUE": "",
        "VALUEDATASOURCE": [],
        "UNITDATASOURCE": [
          {"KEY": "C°", "VALUE": 0},
          {"KEY": "F°", "VALUE": 1}
        ]
      },
      {
        "ID": 4,
        "ROWNUMBER": 4,
        "ROWNUMBERTEXT": "4",
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": false,
        "ALIGNMENT": 1,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": "NONE",
        "NAME": "soru 3",
        "INFORMATIONTEXT": "",
        "TYPE": "Sayısal Değer (Tam Sayı)",
        "LABEL": "Geçen ay geceleri kaç kahve içtiniz",
        "VALUE": "",
        "MAXLENGTH": 0,
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "REGEX": "",
        "UNITTYPE": 0,
        "UNITVALUE": "",
        "VALUEDATASOURCE": [],
        "UNITDATASOURCE": [
          {"KEY": "Adet", "VALUE": 0}
        ]
      },
      {
        "ID": 19,
        "ROWNUMBER": 5,
        "ROWNUMBERTEXT": "4.1",
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": false,
        "ALIGNMENT": 0,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": "NONE",
        "NAME": "Geçen Ay Uyku Problemi",
        "INFORMATIONTEXT": "",
        "TYPE": "Çoktan Seçmeli (DD)",
        "LABEL": "Geçen Ay Uyku Problemi",
        "VALUE": "",
        "MAXLENGTH": 0,
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "REGEX": "",
        "UNITTYPE": 0,
        "UNITVALUE": "",
        "VALUEDATASOURCE": [
          {"KEY": "opt", "VALUE": 1},
          {"KEY": "opt2", "VALUE": 2}
        ],
        "UNITDATASOURCE": [
          {"KEY": "", "VALUE": 0}
        ]
      },
      {
        "ID": 5,
        "ROWNUMBER": 6,
        "ROWNUMBERTEXT": "6",
        "TABLEVEL": 0,
        "ISBOLD": true,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": true,
        "ALIGNMENT": 0,
        "BACKGROUNDCOLOR": "#99B4D1",
        "SECTIONHEADER": "SMALL",
        "NAME": "ara başlık 1",
        "INFORMATIONTEXT": "",
        "TYPE": "",
        "LABEL":
            "Geçen ay aşağıdaki durumlarda belirtilen uyku problemlerini ne sıklıkla yaşadınız?",
        "VALUE": "",
        "MAXLENGTH": 0,
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "REGEX": "",
        "UNITTYPE": 0,
        "UNITVALUE": "",
        "VALUEDATASOURCE": [],
        "UNITDATASOURCE": [
          {"KEY": "", "VALUE": 0}
        ]
      },
      {
        "ID": 6,
        "ROWNUMBER": 7,
        "ROWNUMBERTEXT": "5.1",
        "TABLEVEL": 50,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": false,
        "ALIGNMENT": 0,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": "NONE",
        "NAME": "soru 5.1",
        "INFORMATIONTEXT": "",
        "TYPE": "Çoktan Seçmeli (DD)",
        "LABEL": "30 dakika içinde uykuya dalamadınız",
        "VALUE": "",
        "MAXLENGTH": 0,
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "REGEX": "",
        "UNITTYPE": 0,
        "UNITVALUE": "",
        "VALUEDATASOURCE": [
          {"KEY": "Hiç", "VALUE": 0},
          {"KEY": "Haftada 1'den az", "VALUE": 1},
          {"KEY": "1-2 kez", "VALUE": 2},
          {"KEY": "3 ve daha çok", "VALUE": 3}
        ],
        "UNITDATASOURCE": [
          {"KEY": "", "VALUE": 0}
        ]
      },
      {
        "ID": 7,
        "ROWNUMBER": 8,
        "ROWNUMBERTEXT": "5.2",
        "TABLEVEL": 50,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": false,
        "ALIGNMENT": 0,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": "NONE",
        "NAME": "soru 5.2",
        "INFORMATIONTEXT": "",
        "TYPE": "Çoktan Seçmeli (Radio)",
        "LABEL": "Tuvalete gittiniz",
        "VALUE": "",
        "MAXLENGTH": 0,
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "REGEX": "",
        "UNITTYPE": 0,
        "UNITVALUE": "",
        "VALUEDATASOURCE": [
          {"KEY": "Hiç", "VALUE": 0},
          {"KEY": "Haftada 1'den az", "VALUE": 1},
          {"KEY": "1-2 kez", "VALUE": 2},
          {"KEY": "3 ve daha çok", "VALUE": 3}
        ],
        "UNITDATASOURCE": [
          {"KEY": "", "VALUE": 0}
        ]
      },
      {
        "ID": 8,
        "ROWNUMBER": 9,
        "ROWNUMBERTEXT": "6",
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": false,
        "ALIGNMENT": 0,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": "NONE",
        "NAME": "soru 6",
        "INFORMATIONTEXT": "",
        "TYPE": "Çoktan Seçmeli (Çoklu)",
        "LABEL": "Bir yatak partneriniz veya oda arkadaşınız var mı?",
        "VALUE": "",
        "MAXLENGTH": 0,
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "REGEX": "",
        "UNITTYPE": 0,
        "UNITVALUE": "",
        "VALUEDATASOURCE": [
          {"KEY": "Bir yatak partneriniz veya oda arkadaşı yok", "VALUE": 0},
          {"KEY": "Partneri aynı odada fakat aynı yatakta değil", "VALUE": 1},
          {"KEY": "Diğer odada bir partneri veya oda arkadaşı var", "VALUE": 2},
          {"KEY": "Partner aynı yatakta", "VALUE": 3}
        ],
        "UNITDATASOURCE": [
          {"KEY": "", "VALUE": 0}
        ]
      },
      {
        "ID": 9,
        "ROWNUMBER": 10,
        "ROWNUMBERTEXT": "7",
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": true,
        "ALIGNMENT": 0,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": "NONE",
        "NAME": "eposta",
        "INFORMATIONTEXT": "",
        "TYPE": "Serbest Metin",
        "LABEL": "E-postanızı giriniz",
        "VALUE": "",
        "MAXLENGTH": 25,
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "REGEX": "",
        // "REGEX": "^.+@[a-zA-Z]+\\.{1}[a-zA-Z]+(\\.{0,1}[a-zA-Z]+)$",
        "UNITTYPE": 0,
        "UNITVALUE": "",
        "VALUEDATASOURCE": [],
        "UNITDATASOURCE": [
          {"KEY": "", "VALUE": 0}
        ]
      },
      {
        "ID": 10,
        "ROWNUMBER": 11,
        "ROWNUMBERTEXT": "10",
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": false,
        "ALIGNMENT": 0,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": "NONE",
        "NAME": "Yorum",
        "INFORMATIONTEXT": "",
        "TYPE": "Çoktan Seçmeli (Radio)",
        "LABEL": "Anketten Memnun Musunuz",
        "VALUE": "",
        "MAXLENGTH": 0,
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "REGEX": "",
        "UNITTYPE": 0,
        "UNITVALUE": "",
        "VALUEDATASOURCE": [
          {"KEY": "Evet", "VALUE": 1},
          {"KEY": "Hayır", "VALUE": 2},
          {"KEY": "Belirtmek İstemiyorum", "VALUE": 3}
        ],
        "UNITDATASOURCE": [
          {"KEY": "", "VALUE": 0}
        ]
      },
      {
        "ID": 13,
        "ROWNUMBER": 12,
        "ROWNUMBERTEXT": "12",
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISREQUIRED": true,
        "READONLY": false,
        "SHORTTEXT": true,
        "ALIGNMENT": 0,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": "NONE",
        "NAME": "Size nasıl ulaşalım",
        "INFORMATIONTEXT": "",
        "TYPE": "Serbest Metin",
        "LABEL": "Size nasıl ulaşalım",
        "VALUE": "",
        "MAXLENGTH": 0,
        "INPUTMASK": "",
        "DISPLAYFORMAT": "",
        "REGEX": "",
        "UNITTYPE": 0,
        "UNITVALUE": "",
        "VALUEDATASOURCE": [],
        "UNITDATASOURCE": [
          {"KEY": "", "VALUE": 0}
        ]
      }
    ]
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
      body: ListView(
        children: [
          TreeFromJson(onChange: formOnChange),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Expanded(
                child: formWidget,
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
