// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

String date = "";
DateTime selectedDate = DateTime.now();

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                _selectDate(context);
              },
              child: Text("Choose Date"),
            ),
            const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Payed By',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Total amount',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Recieved by',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Address',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Phone no',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Paid format',
              ),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
  }
}
