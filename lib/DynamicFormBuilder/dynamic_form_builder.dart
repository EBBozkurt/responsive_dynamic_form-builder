// ignore_for_file: file_names, prefer_typing_uninitialized_variables, avoid_print

import 'dart:convert';
import 'package:dynamic_form_builder/DynamicFormBuilder/LeftSideMenu/treeFromJson.dart';
import 'package:dynamic_form_builder/DynamicFormBuilder/json_schema.dart';
import 'package:dynamic_form_builder/global_functions.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class DynamicFormBuilder extends StatefulWidget {
  const DynamicFormBuilder({Key? key}) : super(key: key);

  @override
  _DynamicFormBuilderState createState() => _DynamicFormBuilderState();
}

class _DynamicFormBuilderState extends State<DynamicFormBuilder> {
  Widget formWidget = const SizedBox.shrink();

  String form = json.encode({
    'title': "Pittsburgh Uyku Kalite İndeksi (PUKİ)",
    'description': "Pittsburgh Sleep Quality Index (PSQI)",
    'formID': 1,
    'fields': [
      {
        "ID": 0,
        "ROWNUMBER": 0,
        "TABLEVEL": 5,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 0",
        "INFORMATIONTEXT": "Tarihi giriniz",
        "TYPE": "Tarih/Saat",
        "LABEL": "Formu doldurduğunuz tarih?",
        "VALUE": "",
        "VALUEDATASOURCE": "",
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": true,
        "REGEX": "",
      },
      {
        "ID": 1,
        "ROWNUMBER": 1,
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 1",
        "INFORMATIONTEXT": "Saat olarak yazınız.",
        "TYPE": "Serbest Metin",
        "LABEL": "Geçen ay geceleri genellikle ne zaman yattınız?",
        "VALUE": "",
        "VALUEDATASOURCE": "",
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {
          "TYPE": "DYNAMIC",
          "DATASOURCE": [
            {"VALUE": 0, "KEY": "AM"},
            {"VALUE": 1, "KEY": "PM"},
          ]
        },
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": true,
        "REGEX": "",
      },
      {
        "ID": 2,
        "ROWNUMBER": 2,
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISNUMERIC": true,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 2",
        "INFORMATIONTEXT": "200 karakteri geçmeyiniz.",
        "TYPE": "Serbest Metin",
        "LABEL":
            "Geçen ay geceleri uykuya dalmanız genellikle ne kadar zaman aldı?",
        "VALUE": "",
        "VALUEDATASOURCE": "",
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {
          "TYPE": "STATIC",
          "DATASOURCE": [
            {"VALUE": 0, "KEY": "Dakika"},
          ]
        },
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 3,
        "ROWNUMBER": 3,
        "NAME": "Unique ID 3",
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "INFORMATIONTEXT": "",
        "TYPE": "Serbest Metin",
        "LABEL": "Geçen ay sabahları genellikle ne zaman kalktınız?",
        "VALUE": "",
        "VALUEDATASOURCE": "",
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": true,
        "REGEX": "",
      },
      {
        "ID": 4,
        "ROWNUMBER": 4,
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISNUMERIC": true,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 4",
        "INFORMATIONTEXT": "",
        "TYPE": "Serbest Metin",
        "LABEL": "Geçen ay geceleri aç saat uyudunuz?",
        "VALUE": "",
        "VALUEDATASOURCE": "",
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {
          "TYPE": "STATIC",
          "DATASOURCE": [
            {"VALUE": 0, "KEY": "Saat"},
          ]
        },
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": true,
        "REGEX": "",
      },
      {
        "ID": 5,
        "ROWNUMBER": 5,
        "TABLEVEL": 0,
        "ISBOLD": true,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": true,
        "NAME": "Unique ID 5",
        "INFORMATIONTEXT": "",
        "TYPE": "SectionHeader",
        "LABEL":
            "Geçen ay aşağıdaki durumlarda belirtilen uyku problemlerini ne sıklıkla yaşadınız?",
        "VALUE": "Small Section Header",
        "VALUEDATASOURCE": [],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 5.1,
        "ROWNUMBER": 5.1,
        "TABLEVEL": 50,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 5.1",
        "INFORMATIONTEXT": "",
        "TYPE": "Çoktan Seçmeli",
        "LABEL": "30 dakika içinde uykuya dalamadınız",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Hiç"},
          {"VALUE": 1, "KEY": "Haftada 1'den az"},
          {"VALUE": 2, "KEY": "1-2 kez"},
          {"VALUE": 3, "KEY": "3'ten çok"},
        ],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 5.2,
        "ROWNUMBER": 5.2,
        "TABLEVEL": 50,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 5.2",
        "INFORMATIONTEXT": "00:00 - 06:00 arası baz alınmalıdır.",
        "TYPE": "RadioButton",
        "LABEL": "Gece yarısı veya sabah erkenden uyandınız",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Hiç"},
          {"VALUE": 1, "KEY": "Haftada 1'den az"},
          {"VALUE": 2, "KEY": "1-2 kez"},
          {"VALUE": 3, "KEY": "3'ten çok"},
        ],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 5.3,
        "ROWNUMBER": 5.3,
        "TABLEVEL": 50,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 5.3",
        "INFORMATIONTEXT": "",
        "TYPE": "RadioButton",
        "LABEL": "Tuvalete gittiniz",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Hiç"},
          {"VALUE": 1, "KEY": "Haftada 1'den az"},
          {"VALUE": 2, "KEY": "1-2 kez"},
          {"VALUE": 3, "KEY": "3'ten çok"},
        ],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 5.4,
        "ROWNUMBER": 5.4,
        "TABLEVEL": 50,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 5.4",
        "INFORMATIONTEXT": "",
        "TYPE": "RadioButton",
        "LABEL": "Rahat bir şekilde nefes alıp veremediniz.",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Hiç"},
          {"VALUE": 1, "KEY": "Haftada 1'den az"},
          {"VALUE": 2, "KEY": "1-2 kez"},
          {"VALUE": 3, "KEY": "3'ten çok"},
        ],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 5.5,
        "ROWNUMBER": 5.5,
        "TABLEVEL": 50,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 5.5",
        "INFORMATIONTEXT": "",
        "TYPE": "RadioButton",
        "LABEL": "Aşırı derecede üşüdünüz",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Hiç"},
          {"VALUE": 1, "KEY": "Haftada 1'den az"},
          {"VALUE": 2, "KEY": "1-2 kez"},
          {"VALUE": 3, "KEY": "3'ten çok"},
        ],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 6,
        "ROWNUMBER": 6,
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 6",
        "INFORMATIONTEXT": "",
        "TYPE": "RadioButton",
        "LABEL":
            "Geçen ay uyku kalitenizi bütünü ile nasıl değerlendirirsiniz.",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Çok İyi"},
          {"VALUE": 1, "KEY": "Oldukça İyi"},
          {"VALUE": 2, "KEY": "Oldukça Kötü"},
          {"VALUE": 3, "KEY": "Çok Kötü"},
        ],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 7,
        "ROWNUMBER": 7,
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 7",
        "INFORMATIONTEXT": "",
        "TYPE": "RadioButton",
        "LABEL":
            "Geçen Ay uyumanıza yardımcı olması için ne sıklıkta (reçeteli veya reçetesiz) uyku ilacı aldınız?",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Hiç"},
          {"VALUE": 1, "KEY": "Haftada 1'den az"},
          {"VALUE": 2, "KEY": "Haftada 1 - 2 kez"},
          {"VALUE": 3, "KEY": "Haftada 3'ten çok"},
        ],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 8,
        "ROWNUMBER": 8,
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 8",
        "INFORMATIONTEXT": "",
        "TYPE": "RadioButton",
        "LABEL":
            "Geçen ay araba sürerken, yemek yerken veya sosyal bir aktivite esnasında ne kadar sıklıkla uyanık kalmak için zorlandınız?",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Hiç"},
          {"VALUE": 1, "KEY": "Haftada 1'den az"},
          {"VALUE": 2, "KEY": "Haftada 1 - 2 kez"},
          {"VALUE": 3, "KEY": "Haftada 3'ten çok"},
        ],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 9,
        "ROWNUMBER": 9,
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "SECTIONHEADER": false,
        "NAME": "Unique ID 9",
        "INFORMATIONTEXT": "",
        "TYPE": "RadioButton",
        "LABEL":
            "Geçen ay bu durum işlerinizi yeteri kadar istekle yapmanızda ne derece problem oluşturdu?",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Hiç problem oluşturmadı"},
          {"VALUE": 1, "KEY": "Yalnızca çok az bir problem oluşturdu"},
          {"VALUE": 2, "KEY": "Bir dereceye kadar problem oluşturdu"},
          {"VALUE": 3, "KEY": "Çok büyük bir problem oluşturdu"},
        ],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 10,
        "ROWNUMBER": 10,
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "SECTIONHEADER": false,
        "NAME": "Unique ID 10",
        "INFORMATIONTEXT": "",
        "TYPE": "RadioButton",
        "LABEL": "Bir yatak partneriniz veya oda arkadaşınız var mı?",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Bir yatak partneriniz veya oda arkadaşı yok"},
          {"VALUE": 1, "KEY": "Diğer odada bir partneri veya oda arkadaşı var"},
          {"VALUE": 2, "KEY": "Partneri aynı odada fakat aynı yatakta değil"},
          {"VALUE": 3, "KEY": "Partner aynı yatakta"},
        ],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 11,
        "ROWNUMBER": 11,
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "SECTIONHEADER": false,
        "NAME": "Unique ID 11",
        "INFORMATIONTEXT": "",
        "TYPE": "Checkbox",
        "LABEL": "Bir yatak partneriniz veya oda arkadaşınız var mı?",
        "VALUE": "",
        "VALUEDATASOURCE": [
          {
            "VALUE": false,
            "KEY": "Bir yatak partneriniz veya oda arkadaşı yok"
          },
          {
            "VALUE": false,
            "KEY": "Diğer odada bir partneri veya oda arkadaşı var"
          },
          {
            "VALUE": false,
            "KEY": "Partneri aynı odada fakat aynı yatakta değil"
          },
          {"VALUE": false, "KEY": "Partner aynı yatakta"},
        ],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 12,
        "ROWNUMBER": 12,
        "TABLEVEL": 0,
        "ISBOLD": true,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": true,
        "NAME": "Unique ID 5",
        "INFORMATIONTEXT": "",
        "TYPE": "SectionHeader",
        "LABEL": "Sabah Kalkma Zorlukları",
        "VALUE": "Big Section Header",
        "VALUEDATASOURCE": [],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
      },
      {
        "ID": 13,
        "ROWNUMBER": 13,
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "SECTIONHEADER": false,
        "NAME": "Unique ID 13",
        "INFORMATIONTEXT": "",
        "TYPE": "RadioButton",
        "LABEL": "Bir yatak partneriniz veya oda arkadaşınız var mı?",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Bir yatak partneriniz veya oda arkadaşı yok"},
          {"VALUE": 1, "KEY": "Diğer odada bir partneri veya oda arkadaşı var"},
          {"VALUE": 2, "KEY": "Partneri aynı odada fakat aynı yatakta değil"},
          {"VALUE": 3, "KEY": "Partner aynı yatakta"},
        ],
        "MAXLENGTH": 0,
        "UNITVALUE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
        "REGEX": "",
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
        title: const Text("Dinamik Form Builder"),
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
        title: const Text("Dinamik Form Builder"),
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
