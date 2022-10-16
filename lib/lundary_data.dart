import 'package:flutter/material.dart';

class AddCount extends StatefulWidget {
  const AddCount({Key? key}) : super(key: key);

  @override
  State<AddCount> createState() => _AddCountState();
}

class _AddCountState extends State<AddCount> {
  int counter = 24;
  addCounter() {
    setState(() {
      counter++;
    });
  }

  SubtractCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$counter",
          style: const TextStyle(fontSize: 25.0),
        ),
        ElevatedButton(
            onPressed: () {
              addCounter();
            },
            child: const Text("add")),
        ElevatedButton(
            onPressed: () {
              SubtractCounter();
            },
            child: const Text("Subtract"))
      ],
    );
  }
}
