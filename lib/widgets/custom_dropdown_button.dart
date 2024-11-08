import 'package:flutter/material.dart';

class CustomDropDownButtonClass extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropDownButtonClass({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        value: values.first,
        // (_) is to ignore the input
        onChanged: (_) {},
        items: values.map(
          (e) {
            return DropdownMenuItem(
              value: e, // Set the value of the DropdownMenuItem to the string
              child: Text(e), // Set the child of the DropdownMenuItem as a Text widget displaying the string
            );
          },
        ).toList(), // Convert the Iterable to a List,
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
