import 'package:flutter/material.dart';
import 'package:lab06_142/hobby.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Hobby> hobbies = [];
  List _srlectedItem = [];
  bool sleep = false;

  @override
  void initState() {
    super.initState();
    hobbies = Hobby.getHobby();
    print(hobbies);
  }

  List<Widget> createCheckbox() {
    List<Widget> widgets = [];

    // widgets.add(CheckboxListTile(value: value, onChanged: (value){
    // }))

    for (var hb in hobbies) {
      widgets.add(CheckboxListTile(
        value: hb.value,
        onChanged: (value) {
          setState(() {
            hb.value = value!;

            if (value) {
              _srlectedItem.add(hb.name);
            } else {
              _srlectedItem.remove(hb.name);
            }
          });
        },
        title: Text(hb.name),
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab_06"),
      ),
      body: Column(
        children: [
          Text("งานอดิเรก"),
          Column(
            children: createCheckbox(),
          ),
          Text(_srlectedItem.toString()),
        ],
      ),
    );
  }
}
