// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
class DropButtonWidget extends StatefulWidget {
  const DropButtonWidget({Key? key}) : super(key: key);

  @override
  State<DropButtonWidget> createState() => _DropButtonWidgetState();
}

class _DropButtonWidgetState extends State<DropButtonWidget> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Card(

          child: SizedBox(
            width: 300,
            height: 100,
            child: Center(child: Text('Elevated Card')),
          ),
        ),
      ),
    );
  }
}

