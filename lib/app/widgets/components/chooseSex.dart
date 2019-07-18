import 'package:flutter/material.dart';

class ChooseSex extends StatefulWidget {
  @override
  _ChooseSexState createState() => _ChooseSexState();
}

class _ChooseSexState extends State<ChooseSex> {
  List _sexValues = ['WOMEN', 'MEN'];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentSex;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentSex = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = List();
    for (String sex in _sexValues) {
      items.add(DropdownMenuItem(value: sex, child: Text(sex)));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: _currentSex,
      items: _dropDownMenuItems,
      onChanged: changedDropDownItem,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      underline: Container(),
      icon: Icon(
        Icons.expand_more,
        color: Colors.black,
      ),
    );
  }

  void changedDropDownItem(String selectedSex) {
    setState(() {
      _currentSex = selectedSex;
    });
  }
}
