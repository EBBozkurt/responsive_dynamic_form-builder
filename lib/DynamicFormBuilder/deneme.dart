// ignore_for_file: file_names, prefer_typing_uninitialized_variables, avoid_print

import 'dart:convert';
import 'package:dynamic_form_builder/DynamicFormBuilder/LeftSideMenu/LeftSideMenu.dart';
import 'package:dynamic_form_builder/DynamicFormBuilder/json_schema.dart';
import 'package:flutter/material.dart';

class Deneme extends StatefulWidget {
  const Deneme({Key? key}) : super(key: key);

  @override
  _AktifCalismalarPageState createState() => _AktifCalismalarPageState();
}

class _AktifCalismalarPageState extends State<Deneme> {
  Widget formWidget = const SizedBox.shrink();

  String form = json.encode({
    'title': "Pittsburgh Uyku Kalite İndeksi (PUKİ)",
    'description': "Pittsburgh Sleep Quality Index (PSQI)",
    'fields': [
      {
        "ID": 1,
        "ROWNUMBER": 1,
        "TABLEVEL": 0,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 1",
        "INFORMATIONTEXT": "",
        "TYPE": "Serbest Metin",
        "LABEL": "Geçen ay geceleri genellikle ne zaman yattınız?",
        "VALUE": "",
        "VALUEDATASOURCE": "",
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": true,
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
        "INFORMATIONTEXT": "",
        "TYPE": "Serbest Metin",
        "LABEL":
            "Geçen ay geceleri uykuya dalmanız genellikle ne kadar zaman aldı?",
        "VALUE": "",
        "VALUEDATASOURCE": "",
        "UNIT": {
          "TYPE": "STATIC",
          "DATASOURCE": [
            {"VALUE": 0, "KEY": "Dakika"},
          ]
        },
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
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
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": true,
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
        "UNIT": {
          "TYPE": "STATIC",
          "DATASOURCE": [
            {"VALUE": 0, "KEY": "Saat"},
          ]
        },
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": true,
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
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
      },
      {
        "ID": 5.1,
        "ROWNUMBER": 5.1,
        "TABLEVEL": 4,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 5.1",
        "INFORMATIONTEXT": "",
        "TYPE": "RadioButton",
        "LABEL": "30 dakika içinde uykuya dalamadınız",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Hiç"},
          {"VALUE": 1, "KEY": "Haftada 1'den az"},
          {"VALUE": 2, "KEY": "1-2 kez"},
          {"VALUE": 3, "KEY": "3'ten çok"},
        ],
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
      },
      {
        "ID": 5.2,
        "ROWNUMBER": 5.2,
        "TABLEVEL": 4,
        "ISBOLD": false,
        "ISNUMERIC": false,
        "BACKGROUNDCOLOR": "",
        "SECTIONHEADER": false,
        "NAME": "Unique ID 5.2",
        "INFORMATIONTEXT": "",
        "TYPE": "RadioButton",
        "LABEL": "Gece yarısı veya sabah erkenden uyandınız",
        "VALUE": 0,
        "VALUEDATASOURCE": [
          {"VALUE": 0, "KEY": "Hiç"},
          {"VALUE": 1, "KEY": "Haftada 1'den az"},
          {"VALUE": 2, "KEY": "1-2 kez"},
          {"VALUE": 3, "KEY": "3'ten çok"},
        ],
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
      },
      {
        "ID": 5.3,
        "ROWNUMBER": 5.3,
        "TABLEVEL": 4,
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
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
      },
      {
        "ID": 5.4,
        "ROWNUMBER": 5.4,
        "TABLEVEL": 4,
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
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
      },
      {
        "ID": 5.5,
        "ROWNUMBER": 5.5,
        "TABLEVEL": 4,
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
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
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
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
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
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
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
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
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
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
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
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
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
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
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
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
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
        "UNIT": {"TYPE": "STATIC", "DATASOURCE": ""},
        "READONLY": false,
        "ISREQUIRED": true,
        "SHORTTEXT": false,
      },
    ],
  });
  dynamic response;

  List leftSideMenu = [
    {
      "FORMID": 0,
      "SECTIONHEADER": "Uyku Formları",
      "TITLE": "Uyku Formları",
      "VALUEDATASOURCE": "",
      "CHILDREN": [
        {
          "SECTIONHEADER": "Uyku Sürekliliği",
          "TITLE": "Uyku Sürekliliği",
          "VALUEDATASOURCE": "",
          "CHILDREN": [
            {
              "SECTIONHEADER": "",
              "TITLE": "Uyku Sürekliliği Formu 1",
              "VALUEDATASOURCE": "getSleepCon1",
              "CHILDREN": [],
            },
            {
              "SECTIONHEADER": "",
              "TITLE": "Uyku Sürekliliği Formu 2",
              "VALUEDATASOURCE": "getSleepCon2",
              "CHILDREN": [],
            },
            {
              "SECTIONHEADER": "",
              "TITLE": "Uyku Sürekliliği Formu 3",
              "VALUEDATASOURCE": "getSleepCon3",
              "CHILDREN": [],
            }
          ]
        }
      ],
    },
  ];
  void formOnChange(String widget) {
    setState(() {
      if (widget == "Uyku") {
        selectedWidget("Uyku");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return _aktifCalismalarBody();
  }

  Widget _aktifCalismalarBody() {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Dinamik Form Builder"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 10, bottom: 10.5, right: 0, left: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: LeftSideMenu(onChange: formOnChange),
                  )),
              Expanded(flex: 17, child: formWidget),
            ],
          ),
        ),
      ),
    );
  }

  selectedWidget(String gelenWidget) {
    print("selectedWidget çalıştı" + gelenWidget);

    if (gelenWidget == "Uyku") {
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
