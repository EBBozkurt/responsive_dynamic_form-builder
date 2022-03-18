import 'package:flutter/material.dart';

import '../functions.dart';

class SimpleDate extends StatefulWidget {
  SimpleDate({
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
  _SimpleDate createState() => _SimpleDate();
}

class _SimpleDate extends State<SimpleDate> {
  dynamic item;

  @override
  void initState() {
    super.initState();
    item = widget.item;
  }

  @override
  Widget build(BuildContext context) {
    Widget label = SizedBox.shrink();
    if (Fun.labelHidden(item)) {
      label = Container(
        child: Text(
          item['LABEL'],
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
      );
    }
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          label,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              InkWell(
                  // onTap: () {
                  //   selectDate();
                  // },
                  child: TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                  hintText: item['value'] ?? "",
                  //prefixIcon: Icon(Icons.date_range_rounded),
                  suffixIcon: IconButton(
                    onPressed: () {
                      selectDate();
                    },
                    icon: Icon(Icons.calendar_today_rounded),
                  ),
                ),
              )),
            ],
          )
        ],
      ),
    );
  }

  Future selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now().subtract(Duration(days: 360)),
        firstDate: DateTime.now().subtract(Duration(days: 360)),
        lastDate: DateTime.now().add(Duration(days: 360)));
    if (picked != null) {
      String date =
          "${picked.year.toString()}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";
      this.setState(() {
        item['value'] = date;
        widget.onChange(widget.position, date);
      });
    }
  }
}
