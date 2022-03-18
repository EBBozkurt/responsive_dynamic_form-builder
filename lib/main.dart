import 'package:dynamic_form_builder/DynamicFormBulder/deneme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const Deneme(),
      theme: themeData(),
    );
  }

  ThemeData themeData() {
    return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        //Mobilde underline kullanıyoruz, Web de Outline, düzenlemeler web ve mobile göre
        //isDense: globalFunctions.isMobilePhone() ? true : false,
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.grey.shade700),
        ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.grey.shade700),
        ),
        hintStyle: const TextStyle(fontSize: 15, color: Colors.black),
        labelStyle: const TextStyle(fontSize: 17, color: Colors.black),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //Bu kısım validasyonların TextFormField Widget'ının zıplamamasını sağlaması için var.
        errorStyle: const TextStyle(fontSize: 0.01),
        //https://stackoverflow.com/a/69879565/15323475
        //Bu kısım validasyonların TextFormField Widget'ının zıplamamasını sağlaması için var.
      ),
    );
  }
}
